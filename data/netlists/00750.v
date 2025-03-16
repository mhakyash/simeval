// Benchmark "nand2_en" written by ABC on Wed Jun 26 15:22:19 2024

module nand2_en ( 
    A, B, EN,
    Z  );
  input  A, B, EN;
  output Z;
  AND2X1   g0(.A(B), .B(A), .Y(Z));
endmodule


