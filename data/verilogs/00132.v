module multiplier_8bit (
    input [7:0] a,
    input [7:0] b,
    input ctrl,
    output reg [15:0] c
);

reg [7:0] a_reg;
reg [7:0] b_reg;
reg signed [15:0] c_reg;

always @(posedge clk) begin
    a_reg <= a;
    b_reg <= b;
end

always @(posedge clk) begin
    if (ctrl == 1) begin
        c_reg <= $signed(a_reg) * $signed(b_reg);
    end else begin
        c_reg <= a_reg * b_reg;
    end
end

assign c = c_reg;

endmodule