// Benchmark "decoder_2to4_adder" written by ABC on Wed Jun 26 15:22:02 2024

module decoder_2to4_adder ( clock, 
    \in[0] , \in[1] , ena, cin,
    \out[0] , \out[1] , \out[2] , \out[3] , cout  );
  input  clock;
  input  \in[0] , \in[1] , ena, cin;
  output \out[0] , \out[1] , \out[2] , \out[3] , cout;
  reg \out[2] , \out[3] ;
  wire new_n19, new_n20_1, new_n21, new_n22, new_n23, new_n24_1, new_n25,
    new_n27, new_n28, n20, n24;
  INVX1    g00(.A(\in[1] ), .Y(new_n19));
  XOR2X1   g01(.A(\in[1] ), .B(\in[0] ), .Y(new_n20_1));
  NOR2X1   g02(.A(\in[1] ), .B(\in[0] ), .Y(new_n21));
  NAND3X1  g03(.A(new_n21), .B(new_n20_1), .C(new_n19), .Y(new_n22));
  NAND3X1  g04(.A(new_n21), .B(new_n20_1), .C(\in[1] ), .Y(new_n23));
  NAND3X1  g05(.A(new_n21), .B(new_n20_1), .C(new_n19), .Y(new_n24_1));
  NAND3X1  g06(.A(new_n21), .B(new_n20_1), .C(\in[1] ), .Y(new_n25));
  AOI22X1  g07(.A0(new_n25), .A1(new_n24_1), .B0(new_n23), .B1(new_n22), .Y(n20));
  XOR2X1   g08(.A(new_n19), .B(\in[0] ), .Y(new_n27));
  OR2X1    g09(.A(\in[1] ), .B(\in[0] ), .Y(new_n28));
  NOR3X1   g10(.A(new_n28), .B(new_n27), .C(\in[1] ), .Y(n24));
  ZERO     g11(.Y(\out[0] ));
  ZERO     g12(.Y(\out[1] ));
  ZERO     g13(.Y(cout));
  always @ (posedge clock) begin
    \out[2]  <= n20;
    \out[3]  <= n24;
  end
endmodule


