module dual_ff (
    input clk,    // Clocks are used in sequential circuits
    input d1,    // Data input for first flip-flop
    input d2,    // Data input for second flip-flop
    input reset, // Synchronous active-high reset
    input select, // Select input to choose between flip-flops
    output reg q // Output from the selected flip-flop
);

reg [7:0] ff1_q = 8'h34; // Initialize first flip-flop to 0x34
reg [7:0] ff2_q = 8'h34; // Initialize second flip-flop to 0x34

always @(posedge clk) begin
    if (reset) begin
        ff1_q <= 8'h34;
        ff2_q <= 8'h34;
    end else begin
        if (select) begin
            ff1_q <= d1;
            q <= ff1_q;
        end else begin
            ff2_q <= d2;
            q <= ff2_q;
        end
    end
end

endmodule