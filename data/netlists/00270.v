// Benchmark "mux_4to1_sel2_8_1" written by ABC on Wed Jun 26 15:22:05 2024

module mux_4to1_sel2_8_1 ( 
    \din1[0] , \din1[1] , \din1[2] , \din1[3] , \din1[4] , \din1[5] ,
    \din1[6] , \din1[7] , \din2[0] , \din2[1] , \din2[2] , \din2[3] ,
    \din2[4] , \din2[5] , \din2[6] , \din2[7] , \din3[0] , \din3[1] ,
    \din3[2] , \din3[3] , \din3[4] , \din3[5] , \din3[6] , \din3[7] ,
    \din4[0] , \din4[1] , \din4[2] , \din4[3] , \din4[4] , \din4[5] ,
    \din4[6] , \din4[7] , \din5[0] , \din5[1] ,
    \dout[0] , \dout[1] , \dout[2] , \dout[3] , \dout[4] , \dout[5] ,
    \dout[6] , \dout[7]   );
  input  \din1[0] , \din1[1] , \din1[2] , \din1[3] , \din1[4] ,
    \din1[5] , \din1[6] , \din1[7] , \din2[0] , \din2[1] , \din2[2] ,
    \din2[3] , \din2[4] , \din2[5] , \din2[6] , \din2[7] , \din3[0] ,
    \din3[1] , \din3[2] , \din3[3] , \din3[4] , \din3[5] , \din3[6] ,
    \din3[7] , \din4[0] , \din4[1] , \din4[2] , \din4[3] , \din4[4] ,
    \din4[5] , \din4[6] , \din4[7] , \din5[0] , \din5[1] ;
  output \dout[0] , \dout[1] , \dout[2] , \dout[3] , \dout[4] , \dout[5] ,
    \dout[6] , \dout[7] ;
  wire new_n43, new_n44, new_n45, new_n47, new_n48, new_n50, new_n51,
    new_n53, new_n54, new_n56, new_n57, new_n59, new_n60, new_n62, new_n63,
    new_n65, new_n66;
  INVX1    g00(.A(\din5[1] ), .Y(new_n43));
  MX2X1    g01(.A(\din1[0] ), .B(\din2[0] ), .S0(\din5[0] ), .Y(new_n44));
  MX2X1    g02(.A(\din3[0] ), .B(\din4[0] ), .S0(\din5[0] ), .Y(new_n45));
  MX2X1    g03(.A(new_n45), .B(new_n44), .S0(new_n43), .Y(\dout[0] ));
  MX2X1    g04(.A(\din1[1] ), .B(\din2[1] ), .S0(\din5[0] ), .Y(new_n47));
  MX2X1    g05(.A(\din3[1] ), .B(\din4[1] ), .S0(\din5[0] ), .Y(new_n48));
  MX2X1    g06(.A(new_n48), .B(new_n47), .S0(new_n43), .Y(\dout[1] ));
  MX2X1    g07(.A(\din1[2] ), .B(\din2[2] ), .S0(\din5[0] ), .Y(new_n50));
  MX2X1    g08(.A(\din3[2] ), .B(\din4[2] ), .S0(\din5[0] ), .Y(new_n51));
  MX2X1    g09(.A(new_n51), .B(new_n50), .S0(new_n43), .Y(\dout[2] ));
  MX2X1    g10(.A(\din1[3] ), .B(\din2[3] ), .S0(\din5[0] ), .Y(new_n53));
  MX2X1    g11(.A(\din3[3] ), .B(\din4[3] ), .S0(\din5[0] ), .Y(new_n54));
  MX2X1    g12(.A(new_n54), .B(new_n53), .S0(new_n43), .Y(\dout[3] ));
  MX2X1    g13(.A(\din1[4] ), .B(\din2[4] ), .S0(\din5[0] ), .Y(new_n56));
  MX2X1    g14(.A(\din3[4] ), .B(\din4[4] ), .S0(\din5[0] ), .Y(new_n57));
  MX2X1    g15(.A(new_n57), .B(new_n56), .S0(new_n43), .Y(\dout[4] ));
  MX2X1    g16(.A(\din1[5] ), .B(\din2[5] ), .S0(\din5[0] ), .Y(new_n59));
  MX2X1    g17(.A(\din3[5] ), .B(\din4[5] ), .S0(\din5[0] ), .Y(new_n60));
  MX2X1    g18(.A(new_n60), .B(new_n59), .S0(new_n43), .Y(\dout[5] ));
  MX2X1    g19(.A(\din1[6] ), .B(\din2[6] ), .S0(\din5[0] ), .Y(new_n62));
  MX2X1    g20(.A(\din3[6] ), .B(\din4[6] ), .S0(\din5[0] ), .Y(new_n63));
  MX2X1    g21(.A(new_n63), .B(new_n62), .S0(new_n43), .Y(\dout[6] ));
  MX2X1    g22(.A(\din1[7] ), .B(\din2[7] ), .S0(\din5[0] ), .Y(new_n65));
  MX2X1    g23(.A(\din3[7] ), .B(\din4[7] ), .S0(\din5[0] ), .Y(new_n66));
  MX2X1    g24(.A(new_n66), .B(new_n65), .S0(new_n43), .Y(\dout[7] ));
endmodule


