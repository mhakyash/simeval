module ripple_carry_adder_subtractor (
    input [3:0] A,
    input [3:0] B,
    input sub,
    output [3:0] sum,
    output carry_out
);

reg [3:0] A_reg, B_reg, sum_reg;
reg carry_in_reg, carry_out_reg;

always @(posedge clk) begin
    A_reg <= A;
    B_reg <= B;
    sum_reg <= sum_reg + (sub ? ~B_reg + 1 : B_reg) + (sub ? ~A_reg + 1 : A_reg);
    carry_in_reg <= sub ? ~B_reg[0] : 1'b0;
    carry_out_reg <= sum_reg[3] ^ carry_in_reg;
end

assign sum = sum_reg;
assign carry_out = carry_out_reg;

endmodule