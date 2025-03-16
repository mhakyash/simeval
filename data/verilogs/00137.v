module four_bit_adder(
  input [3:0] A,
  input [3:0] B,
  input Cin,
  output [3:0] S,
  output Cout
);

  wire [3:0] S1;
  wire [3:0] S2;
  wire [3:0] S3;
  wire [3:0] S4;
  wire C1;
  wire C2;
  wire C3;

  // First stage of adder
  nand2 #(4) U1[3:0] (
    .zn(S1),
    .a(A),
    .b(B)
  );
  
  // Second stage of adder
  nand3 #(4) U2[3:0] (
    .zn(S2),
    .a(A),
    .b(B),
    .c(S1[3:0])
  );
  
  // Third stage of adder
  nand3 #(4) U3[3:0] (
    .zn(S3),
    .a(A),
    .b(B),
    .c(S2[3:0])
  );
  
  // Fourth stage of adder
  nand3 #(4) U4[3:0] (
    .zn(S4),
    .a(A),
    .b(B),
    .c(S3[3:0])
  );

  // Carry-out calculation
  nand2 #(4) C5 (
    .zn(Cout),
    .a(S4[3]),
    .b(S3[3])
  );
  
  nand2 #(4) C6 (
    .zn(C3),
    .a(S2[3]),
    .b(S1[3])
  );
  
  nand2 #(4) C7 (
    .zn(C2),
    .a(S1[3]),
    .b(Cin)
  );
  
  nand3 #(4) C8 (
    .zn(C1),
    .a(S4[3]),
    .b(S3[3]),
    .c(Cin)
  );

  // Final sum calculation
  nand3 #(4) S5[3:0] (
    .zn(S),
    .a(S4[3:0]),
    .b(C3),
    .c(C2)
  );

  nand3 #(4) S6[3:0] (
    .zn(S),
    .a(S),
    .b(C1),
    .c(Cout)
  );

endmodule