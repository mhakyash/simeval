module shift_register_incrementer_xor (
    input clk,
    input reset,     // Synchronous active-high reset
    input [7:0] d,   // 8-bit input for the shift register
    input select,    // Select input for shifting left or right
    output [7:0] q,  // 8-bit output from the shift register
    output [3:0] ena,// Incrementer enable signal for each digit
    output [3:0] c,  // Incrementer output for each digit
    output [7:0] f    // Output from the functional module
);

reg [7:0] shift_reg;
reg [3:0] counter;

always @(posedge clk) begin
    if (reset) begin
        shift_reg <= 8'b0;
        counter <= 4'b0;
    end else begin
        if (select) begin
            shift_reg <= {shift_reg[6:0], d};
        end else begin
            shift_reg <= {d, shift_reg[7:1]};
        end
        
        ena <= 4'b1111;
        c <= counter;
        counter <= counter + 1;
        if (counter == 4'b1111) begin
            counter <= 4'b0;
        end
    end
end

assign q = shift_reg;
assign f = shift_reg ^ {counter, counter, counter, counter};

endmodule