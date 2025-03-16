module nand_full_adder (
    input [3:0] A,
    input [3:0] B,
    input [3:0] C,
    output reg [3:0] sum
);

wire [3:0] xor1_out;
wire [3:0] xor2_out;
wire [3:0] and1_out;
wire [3:0] and2_out;
wire [3:0] and3_out;
wire [3:0] or1_out;

assign xor1_out = ~(A ^ B);
assign xor2_out = ~(xor1_out ^ C);
assign and1_out = ~(A & B);
assign and2_out = ~(xor1_out & C);
assign and3_out = ~(and1_out & C);
assign or1_out = ~(and2_out & and3_out);

assign sum = ~(or1_out ^ xor2_out);

endmodule