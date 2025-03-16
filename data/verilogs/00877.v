module magnitude_comparator (
    input [3:0] a,
    input [3:0] b,
    output [1:0] out
);

reg [3:0] a_reg, b_reg;
reg [1:0] out_reg;

always @(posedge clk) begin
    a_reg <= a;
    b_reg <= b;
end

always @(posedge clk) begin
    if (a_reg == b_reg) begin
        out_reg <= 2'b00;
    end else if (a_reg > b_reg) begin
        out_reg <= 2'b01;
    end else begin
        out_reg <= 2'b10;
    end
end

assign out = out_reg;

endmodule