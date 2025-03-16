module bitwise_or(
  input [7:0] A,
  input [7:0] B,
  output [7:0] X
);

  wire [7:0] temp;
  
  assign temp = A | B;
  assign X = temp;
  
endmodule