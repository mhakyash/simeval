module adder_with_multiplexer (
  input [3:0] A,
  input [3:0] B,
  input sel,
  output [3:0] sum,
  output carry_out,
  output greater_than_7
);

  wire [3:0] mux_out;
  wire c1, c2, c3;
  
  assign mux_out = sel ? B : A;
  
  assign {carry_out, sum} = A + mux_out;
  
  assign c1 = A[0] & mux_out[0];
  assign c2 = A[0] ^ mux_out[0];
  assign c3 = sum[0] ^ c2;
  
  assign greater_than_7 = c1 | c3;
  
endmodule