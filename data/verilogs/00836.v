module bitwise_and (
  A,
  B,
  Y
);

input wire [7:0] A;
input wire [7:0] B;
output wire [7:0] Y;

  and #(
    .N(8)
  ) and_inst (
    .A(A),
    .B(B),
    .Y(Y)
  );

endmodule