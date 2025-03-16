module comparator2bit(input [1:0] A, B, output out);
  wire [1:0] nand_out;
  wire inv_out;
  
  nand_gate nand1(A[0], B[0], nand_out[0]);
  nand_gate nand2(A[1], B[1], nand_out[1]);
  inverter inv(nand_out[1], inv_out);
  and_gate and1(nand_out[0], inv_out, out);
endmodule

module or_gate(input a, b, output out);
  assign out = a | b;
endmodule