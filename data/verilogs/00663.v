module top_module (
    input clk,
    input reset,      // Synchronous active-high reset
    output [7:0] q    // 8-bit output of the functional module
);

    // Instantiate the counter module
    reg [3:0] counter = 4'b0000;
    always @(posedge clk) begin
        if (reset) begin
            counter <= 4'b0000;
        end else begin
            counter <= counter + 1;
        end
    end
    
    // Instantiate the shift register module
    reg [7:0] shift_reg = 8'b00000000;
    always @(posedge clk) begin
        if (!reset) begin
            shift_reg <= {shift_reg[6:0], shift_reg[7]};
        end
    end
    
    // Instantiate the functional module
    reg [7:0] functional_output = 8'b00000000;
    always @(posedge clk) begin
        functional_output <= counter | shift_reg;
    end
    
    // Assign the output
    assign q = functional_output;
    
endmodule