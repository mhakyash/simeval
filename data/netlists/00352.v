// Benchmark "bool_func" written by ABC on Wed Jun 26 15:22:07 2024

module bool_func ( 
    x, y, z,
    f  );
  input  x, y, z;
  output f;
  wire new_n5, new_n6;
  OR2X1    g0(.A(y), .B(x), .Y(new_n5));
  XOR2X1   g1(.A(z), .B(x), .Y(new_n6));
  AND2X1   g2(.A(new_n6), .B(new_n5), .Y(f));
endmodule


