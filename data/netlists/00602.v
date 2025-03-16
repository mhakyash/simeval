// Benchmark "barrel_shifter" written by ABC on Wed Jun 26 15:22:15 2024

module barrel_shifter ( 
    \data_in[0] , \data_in[1] , \data_in[2] , \data_in[3] , \shift_amt[0] ,
    \shift_amt[1] , shift_dir, enable,
    \data_out[0] , \data_out[1] , \data_out[2] , \data_out[3]   );
  input  \data_in[0] , \data_in[1] , \data_in[2] , \data_in[3] ,
    \shift_amt[0] , \shift_amt[1] , shift_dir, enable;
  output \data_out[0] , \data_out[1] , \data_out[2] , \data_out[3] ;
  wire new_n13, new_n14, new_n15, new_n16, new_n17, new_n18, new_n19,
    new_n20, new_n21, new_n22, new_n24, new_n25, new_n26, new_n27, new_n28,
    new_n29, new_n30, new_n31, new_n32, new_n33, new_n35, new_n36, new_n37,
    new_n38, new_n40, new_n41, new_n42, new_n43, new_n44;
  INVX1    g00(.A(enable), .Y(new_n13));
  INVX1    g01(.A(\shift_amt[1] ), .Y(new_n14));
  MX2X1    g02(.A(\data_in[0] ), .B(\data_in[1] ), .S0(\shift_amt[0] ), .Y(new_n15));
  MX2X1    g03(.A(\data_in[2] ), .B(\data_in[3] ), .S0(\shift_amt[0] ), .Y(new_n16));
  MX2X1    g04(.A(new_n16), .B(new_n15), .S0(new_n14), .Y(new_n17));
  AND2X1   g05(.A(new_n17), .B(shift_dir), .Y(new_n18));
  INVX1    g06(.A(\shift_amt[0] ), .Y(new_n19));
  NAND2X1  g07(.A(new_n19), .B(\data_in[0] ), .Y(new_n20));
  NOR3X1   g08(.A(new_n20), .B(shift_dir), .C(\shift_amt[1] ), .Y(new_n21));
  OR2X1    g09(.A(new_n21), .B(new_n18), .Y(new_n22));
  MX2X1    g10(.A(new_n22), .B(\data_in[0] ), .S0(new_n13), .Y(\data_out[0] ));
  INVX1    g11(.A(shift_dir), .Y(new_n24));
  INVX1    g12(.A(\data_in[1] ), .Y(new_n25));
  INVX1    g13(.A(\data_in[2] ), .Y(new_n26));
  MX2X1    g14(.A(new_n26), .B(new_n25), .S0(new_n19), .Y(new_n27));
  INVX1    g15(.A(\data_in[3] ), .Y(new_n28));
  OR2X1    g16(.A(\shift_amt[0] ), .B(new_n28), .Y(new_n29));
  MX2X1    g17(.A(new_n29), .B(new_n27), .S0(new_n14), .Y(new_n30));
  MX2X1    g18(.A(\data_in[1] ), .B(\data_in[0] ), .S0(\shift_amt[0] ), .Y(new_n31));
  NAND3X1  g19(.A(new_n31), .B(new_n24), .C(new_n14), .Y(new_n32));
  OAI21X1  g20(.A0(new_n30), .A1(new_n24), .B0(new_n32), .Y(new_n33));
  MX2X1    g21(.A(new_n33), .B(\data_in[1] ), .S0(new_n13), .Y(\data_out[1] ));
  NAND3X1  g22(.A(new_n16), .B(shift_dir), .C(new_n14), .Y(new_n35));
  MX2X1    g23(.A(new_n26), .B(new_n25), .S0(\shift_amt[0] ), .Y(new_n36));
  MX2X1    g24(.A(new_n36), .B(new_n20), .S0(\shift_amt[1] ), .Y(new_n37));
  OAI21X1  g25(.A0(new_n37), .A1(shift_dir), .B0(new_n35), .Y(new_n38));
  MX2X1    g26(.A(new_n38), .B(\data_in[2] ), .S0(new_n13), .Y(\data_out[2] ));
  OR2X1    g27(.A(enable), .B(new_n28), .Y(new_n40));
  NOR4X1   g28(.A(new_n24), .B(\shift_amt[1] ), .C(\shift_amt[0] ), .D(new_n28), .Y(new_n41));
  MX2X1    g29(.A(\data_in[3] ), .B(\data_in[2] ), .S0(\shift_amt[0] ), .Y(new_n42));
  MX2X1    g30(.A(new_n42), .B(new_n31), .S0(\shift_amt[1] ), .Y(new_n43));
  AOI21X1  g31(.A0(new_n43), .A1(new_n24), .B0(new_n41), .Y(new_n44));
  OAI21X1  g32(.A0(new_n44), .A1(new_n13), .B0(new_n40), .Y(\data_out[3] ));
endmodule


