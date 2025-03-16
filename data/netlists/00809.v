// Benchmark "barrel_shifter_16bit" written by ABC on Wed Jun 26 15:22:20 2024

module barrel_shifter_16bit ( 
    \data[0] , \data[1] , \data[2] , \data[3] , \data[4] , \data[5] ,
    \data[6] , \data[7] , \data[8] , \data[9] , \data[10] , \data[11] ,
    \data[12] , \data[13] , \data[14] , \data[15] , \shift_amount[0] ,
    \shift_amount[1] , \shift_amount[2] , \shift_amount[3] ,
    \shifted_data[0] , \shifted_data[1] , \shifted_data[2] ,
    \shifted_data[3] , \shifted_data[4] , \shifted_data[5] ,
    \shifted_data[6] , \shifted_data[7] , \shifted_data[8] ,
    \shifted_data[9] , \shifted_data[10] , \shifted_data[11] ,
    \shifted_data[12] , \shifted_data[13] , \shifted_data[14] ,
    \shifted_data[15]   );
  input  \data[0] , \data[1] , \data[2] , \data[3] , \data[4] ,
    \data[5] , \data[6] , \data[7] , \data[8] , \data[9] , \data[10] ,
    \data[11] , \data[12] , \data[13] , \data[14] , \data[15] ,
    \shift_amount[0] , \shift_amount[1] , \shift_amount[2] ,
    \shift_amount[3] ;
  output \shifted_data[0] , \shifted_data[1] , \shifted_data[2] ,
    \shifted_data[3] , \shifted_data[4] , \shifted_data[5] ,
    \shifted_data[6] , \shifted_data[7] , \shifted_data[8] ,
    \shifted_data[9] , \shifted_data[10] , \shifted_data[11] ,
    \shifted_data[12] , \shifted_data[13] , \shifted_data[14] ,
    \shifted_data[15] ;
  wire new_n37, new_n38, new_n39, new_n40, new_n41, new_n42, new_n43,
    new_n44, new_n45, new_n46, new_n47, new_n48, new_n49, new_n50, new_n51,
    new_n52, new_n53, new_n55, new_n56, new_n57, new_n58, new_n60, new_n61,
    new_n62, new_n64, new_n65, new_n66, new_n68, new_n69, new_n70, new_n72,
    new_n73, new_n74, new_n76, new_n77, new_n78, new_n80, new_n81, new_n82,
    new_n84, new_n85, new_n86, new_n88, new_n89, new_n91, new_n92, new_n94,
    new_n95, new_n96, new_n98, new_n99, new_n100, new_n102, new_n104;
  INVX1    g00(.A(\shift_amount[0] ), .Y(new_n37));
  INVX1    g01(.A(\shift_amount[1] ), .Y(new_n38));
  INVX1    g02(.A(\shift_amount[2] ), .Y(new_n39));
  MX2X1    g03(.A(\data[0] ), .B(\data[8] ), .S0(\shift_amount[3] ), .Y(new_n40));
  MX2X1    g04(.A(\data[4] ), .B(\data[12] ), .S0(\shift_amount[3] ), .Y(new_n41));
  MX2X1    g05(.A(new_n41), .B(new_n40), .S0(new_n39), .Y(new_n42));
  MX2X1    g06(.A(\data[2] ), .B(\data[10] ), .S0(\shift_amount[3] ), .Y(new_n43));
  MX2X1    g07(.A(\data[6] ), .B(\data[14] ), .S0(\shift_amount[3] ), .Y(new_n44));
  MX2X1    g08(.A(new_n44), .B(new_n43), .S0(new_n39), .Y(new_n45));
  MX2X1    g09(.A(new_n45), .B(new_n42), .S0(new_n38), .Y(new_n46));
  MX2X1    g10(.A(\data[1] ), .B(\data[9] ), .S0(\shift_amount[3] ), .Y(new_n47));
  MX2X1    g11(.A(\data[5] ), .B(\data[13] ), .S0(\shift_amount[3] ), .Y(new_n48));
  MX2X1    g12(.A(new_n48), .B(new_n47), .S0(new_n39), .Y(new_n49));
  MX2X1    g13(.A(\data[3] ), .B(\data[11] ), .S0(\shift_amount[3] ), .Y(new_n50));
  MX2X1    g14(.A(\data[7] ), .B(\data[15] ), .S0(\shift_amount[3] ), .Y(new_n51));
  MX2X1    g15(.A(new_n51), .B(new_n50), .S0(new_n39), .Y(new_n52));
  MX2X1    g16(.A(new_n52), .B(new_n49), .S0(new_n38), .Y(new_n53));
  MX2X1    g17(.A(new_n53), .B(new_n46), .S0(new_n37), .Y(\shifted_data[0] ));
  INVX1    g18(.A(\shift_amount[3] ), .Y(new_n55));
  AND2X1   g19(.A(new_n55), .B(\data[8] ), .Y(new_n56));
  MX2X1    g20(.A(new_n56), .B(new_n41), .S0(new_n39), .Y(new_n57));
  MX2X1    g21(.A(new_n57), .B(new_n45), .S0(new_n38), .Y(new_n58));
  MX2X1    g22(.A(new_n58), .B(new_n53), .S0(new_n37), .Y(\shifted_data[1] ));
  AND2X1   g23(.A(new_n55), .B(\data[9] ), .Y(new_n60));
  MX2X1    g24(.A(new_n60), .B(new_n48), .S0(new_n39), .Y(new_n61));
  MX2X1    g25(.A(new_n61), .B(new_n52), .S0(new_n38), .Y(new_n62));
  MX2X1    g26(.A(new_n62), .B(new_n58), .S0(new_n37), .Y(\shifted_data[2] ));
  AND2X1   g27(.A(new_n55), .B(\data[10] ), .Y(new_n64));
  MX2X1    g28(.A(new_n64), .B(new_n44), .S0(new_n39), .Y(new_n65));
  MX2X1    g29(.A(new_n65), .B(new_n57), .S0(new_n38), .Y(new_n66));
  MX2X1    g30(.A(new_n66), .B(new_n62), .S0(new_n37), .Y(\shifted_data[3] ));
  AND2X1   g31(.A(new_n55), .B(\data[11] ), .Y(new_n68));
  MX2X1    g32(.A(new_n68), .B(new_n51), .S0(new_n39), .Y(new_n69));
  MX2X1    g33(.A(new_n69), .B(new_n61), .S0(new_n38), .Y(new_n70));
  MX2X1    g34(.A(new_n70), .B(new_n66), .S0(new_n37), .Y(\shifted_data[4] ));
  AND2X1   g35(.A(new_n55), .B(\data[12] ), .Y(new_n72));
  MX2X1    g36(.A(new_n72), .B(new_n56), .S0(new_n39), .Y(new_n73));
  MX2X1    g37(.A(new_n73), .B(new_n65), .S0(new_n38), .Y(new_n74));
  MX2X1    g38(.A(new_n74), .B(new_n70), .S0(new_n37), .Y(\shifted_data[5] ));
  AND2X1   g39(.A(new_n55), .B(\data[13] ), .Y(new_n76));
  MX2X1    g40(.A(new_n76), .B(new_n60), .S0(new_n39), .Y(new_n77));
  MX2X1    g41(.A(new_n77), .B(new_n69), .S0(new_n38), .Y(new_n78));
  MX2X1    g42(.A(new_n78), .B(new_n74), .S0(new_n37), .Y(\shifted_data[6] ));
  AND2X1   g43(.A(new_n55), .B(\data[14] ), .Y(new_n80));
  MX2X1    g44(.A(new_n80), .B(new_n64), .S0(new_n39), .Y(new_n81));
  MX2X1    g45(.A(new_n81), .B(new_n73), .S0(new_n38), .Y(new_n82));
  MX2X1    g46(.A(new_n82), .B(new_n78), .S0(new_n37), .Y(\shifted_data[7] ));
  AND2X1   g47(.A(new_n55), .B(\data[15] ), .Y(new_n84));
  MX2X1    g48(.A(new_n84), .B(new_n68), .S0(new_n39), .Y(new_n85));
  MX2X1    g49(.A(new_n85), .B(new_n77), .S0(new_n38), .Y(new_n86));
  MX2X1    g50(.A(new_n86), .B(new_n82), .S0(new_n37), .Y(\shifted_data[8] ));
  AND2X1   g51(.A(new_n72), .B(new_n39), .Y(new_n88));
  MX2X1    g52(.A(new_n88), .B(new_n81), .S0(new_n38), .Y(new_n89));
  MX2X1    g53(.A(new_n89), .B(new_n86), .S0(new_n37), .Y(\shifted_data[9] ));
  AND2X1   g54(.A(new_n76), .B(new_n39), .Y(new_n91));
  MX2X1    g55(.A(new_n91), .B(new_n85), .S0(new_n38), .Y(new_n92));
  MX2X1    g56(.A(new_n92), .B(new_n89), .S0(new_n37), .Y(\shifted_data[10] ));
  INVX1    g57(.A(\data[14] ), .Y(new_n94));
  NOR3X1   g58(.A(\shift_amount[3] ), .B(\shift_amount[2] ), .C(new_n94), .Y(new_n95));
  MX2X1    g59(.A(new_n95), .B(new_n88), .S0(new_n38), .Y(new_n96));
  MX2X1    g60(.A(new_n96), .B(new_n92), .S0(new_n37), .Y(\shifted_data[11] ));
  INVX1    g61(.A(\data[15] ), .Y(new_n98));
  NOR3X1   g62(.A(\shift_amount[3] ), .B(\shift_amount[2] ), .C(new_n98), .Y(new_n99));
  MX2X1    g63(.A(new_n99), .B(new_n91), .S0(new_n38), .Y(new_n100));
  MX2X1    g64(.A(new_n100), .B(new_n96), .S0(new_n37), .Y(\shifted_data[12] ));
  NOR4X1   g65(.A(\shift_amount[3] ), .B(\shift_amount[2] ), .C(\shift_amount[1] ), .D(new_n94), .Y(new_n102));
  MX2X1    g66(.A(new_n102), .B(new_n100), .S0(new_n37), .Y(\shifted_data[13] ));
  NOR4X1   g67(.A(\shift_amount[3] ), .B(\shift_amount[2] ), .C(\shift_amount[1] ), .D(new_n98), .Y(new_n104));
  MX2X1    g68(.A(new_n104), .B(new_n102), .S0(new_n37), .Y(\shifted_data[14] ));
  AND2X1   g69(.A(new_n104), .B(new_n37), .Y(\shifted_data[15] ));
endmodule


