// Benchmark "top_module" written by ABC on Wed Jun 26 15:22:12 2024

module top_module ( 
    \vec[0] , \vec[1] , \vec[2] , select,
    \outv[0] , \outv[1] , \outv[2] , o2, o1, o0  );
  input  \vec[0] , \vec[1] , \vec[2] , select;
  output \outv[0] , \outv[1] , \outv[2] , o2, o1, o0;
  ZERO     g0(.Y(o2));
  ZERO     g1(.Y(o1));
  ZERO     g2(.Y(o0));
  BUFX1    g3(.A(\vec[0] ), .Y(\outv[0] ));
  BUFX1    g4(.A(\vec[1] ), .Y(\outv[1] ));
  BUFX1    g5(.A(\vec[2] ), .Y(\outv[2] ));
endmodule


