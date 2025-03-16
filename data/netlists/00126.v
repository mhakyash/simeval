// Benchmark "vd12401" written by ABC on Wed Jun 26 15:22:01 2024

module vd12401 ( 
    vcbab45, v0e28cb, v3ca442,
    y  );
  input  vcbab45, v0e28cb, v3ca442;
  output y;
  wire new_n5;
  OR2X1    g0(.A(v0e28cb), .B(vcbab45), .Y(new_n5));
  OR2X1    g1(.A(new_n5), .B(v3ca442), .Y(y));
endmodule


