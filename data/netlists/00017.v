// Benchmark "barrel_shifter" written by ABC on Wed Jun 26 15:21:58 2024

module barrel_shifter ( 
    \data[0] , \data[1] , \data[2] , \data[3] , shift_left, shift_right,
    rotate_right,
    \shifted_data[0] , \shifted_data[1] , \shifted_data[2] ,
    \shifted_data[3]   );
  input  \data[0] , \data[1] , \data[2] , \data[3] , shift_left,
    shift_right, rotate_right;
  output \shifted_data[0] , \shifted_data[1] , \shifted_data[2] ,
    \shifted_data[3] ;
  wire new_n12, new_n13, new_n14, new_n15, new_n16, new_n18, new_n19,
    new_n21, new_n22, new_n24, new_n25;
  MX2X1    g00(.A(\data[2] ), .B(\data[0] ), .S0(shift_left), .Y(new_n12));
  INVX1    g01(.A(rotate_right), .Y(new_n13));
  INVX1    g02(.A(shift_left), .Y(new_n14));
  AND2X1   g03(.A(new_n14), .B(\data[1] ), .Y(new_n15));
  MX2X1    g04(.A(new_n12), .B(new_n15), .S0(new_n13), .Y(new_n16));
  MX2X1    g05(.A(new_n16), .B(new_n12), .S0(shift_right), .Y(\shifted_data[0] ));
  MX2X1    g06(.A(\data[3] ), .B(\data[1] ), .S0(shift_left), .Y(new_n18));
  MX2X1    g07(.A(new_n18), .B(new_n12), .S0(new_n13), .Y(new_n19));
  MX2X1    g08(.A(new_n19), .B(new_n18), .S0(shift_right), .Y(\shifted_data[1] ));
  AND2X1   g09(.A(shift_left), .B(\data[2] ), .Y(new_n21));
  MX2X1    g10(.A(new_n21), .B(new_n18), .S0(new_n13), .Y(new_n22));
  MX2X1    g11(.A(new_n22), .B(new_n21), .S0(shift_right), .Y(\shifted_data[2] ));
  NAND2X1  g12(.A(new_n21), .B(new_n13), .Y(new_n24));
  NAND3X1  g13(.A(rotate_right), .B(new_n14), .C(\data[1] ), .Y(new_n25));
  AOI21X1  g14(.A0(new_n25), .A1(new_n24), .B0(shift_right), .Y(\shifted_data[3] ));
endmodule


