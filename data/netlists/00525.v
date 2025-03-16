// Benchmark "touch_sensor_interface" written by ABC on Wed Jun 26 15:22:13 2024

module touch_sensor_interface ( clock, 
    trigger, mode, \sensor[0] , \sensor[1] , \sensor[2] , \sensor[3] ,
    \sensor[4] , \sensor[5] , \sensor[6] , \sensor[7] ,
    touch  );
  input  clock;
  input  trigger, mode, \sensor[0] , \sensor[1] , \sensor[2] ,
    \sensor[3] , \sensor[4] , \sensor[5] , \sensor[6] , \sensor[7] ;
  output touch;
  reg touch_detected;
  wire new_n15, new_n16, new_n17, new_n18, new_n19, new_n20, new_n21,
    new_n22, new_n23, new_n24_1, new_n25, new_n26, new_n27, new_n28,
    new_n29, new_n30, new_n31, new_n32, new_n33, new_n34, new_n35, new_n36,
    new_n37, new_n38, new_n39, new_n40, new_n41, new_n42, new_n43, new_n44,
    new_n45, new_n46, new_n47, n24;
  INVX1    g00(.A(mode), .Y(new_n15));
  INVX1    g01(.A(\sensor[4] ), .Y(new_n16));
  INVX1    g02(.A(\sensor[5] ), .Y(new_n17));
  OR4X1    g03(.A(\sensor[6] ), .B(new_n17), .C(new_n16), .D(\sensor[3] ), .Y(new_n18));
  NOR2X1   g04(.A(\sensor[2] ), .B(\sensor[1] ), .Y(new_n19));
  NOR2X1   g05(.A(new_n19), .B(new_n18), .Y(new_n20));
  INVX1    g06(.A(\sensor[6] ), .Y(new_n21));
  NAND2X1  g07(.A(\sensor[4] ), .B(\sensor[3] ), .Y(new_n22));
  OAI21X1  g08(.A0(new_n22), .A1(new_n17), .B0(new_n21), .Y(new_n23));
  NOR3X1   g09(.A(new_n23), .B(new_n20), .C(\sensor[7] ), .Y(new_n24_1));
  INVX1    g10(.A(\sensor[1] ), .Y(new_n25));
  OR4X1    g11(.A(\sensor[7] ), .B(\sensor[2] ), .C(new_n25), .D(\sensor[0] ), .Y(new_n26));
  OAI21X1  g12(.A0(new_n26), .A1(new_n18), .B0(new_n15), .Y(new_n27));
  NAND2X1  g13(.A(\sensor[3] ), .B(\sensor[2] ), .Y(new_n28));
  AND2X1   g14(.A(\sensor[3] ), .B(\sensor[2] ), .Y(new_n29));
  OR2X1    g15(.A(new_n29), .B(new_n28), .Y(new_n30));
  INVX1    g16(.A(\sensor[7] ), .Y(new_n31));
  NOR4X1   g17(.A(new_n31), .B(new_n21), .C(new_n17), .D(new_n16), .Y(new_n32));
  NAND4X1  g18(.A(\sensor[7] ), .B(\sensor[6] ), .C(\sensor[5] ), .D(\sensor[4] ), .Y(new_n33));
  AOI21X1  g19(.A0(new_n32), .A1(new_n30), .B0(new_n33), .Y(new_n34));
  NOR4X1   g20(.A(new_n29), .B(new_n28), .C(new_n17), .D(new_n16), .Y(new_n35));
  AND2X1   g21(.A(new_n35), .B(\sensor[6] ), .Y(new_n36));
  XOR2X1   g22(.A(new_n36), .B(\sensor[7] ), .Y(new_n37));
  XOR2X1   g23(.A(new_n35), .B(new_n21), .Y(new_n38));
  NOR3X1   g24(.A(new_n29), .B(new_n28), .C(new_n16), .Y(new_n39));
  XOR2X1   g25(.A(new_n39), .B(new_n17), .Y(new_n40));
  AND2X1   g26(.A(new_n28), .B(\sensor[4] ), .Y(new_n41));
  NAND4X1  g27(.A(new_n41), .B(new_n40), .C(new_n38), .D(new_n37), .Y(new_n42));
  XOR2X1   g28(.A(new_n36), .B(new_n31), .Y(new_n43));
  XOR2X1   g29(.A(new_n30), .B(\sensor[4] ), .Y(new_n44));
  AND2X1   g30(.A(new_n44), .B(new_n40), .Y(new_n45));
  AOI21X1  g31(.A0(new_n45), .A1(new_n38), .B0(new_n43), .Y(new_n46));
  AOI21X1  g32(.A0(new_n46), .A1(new_n42), .B0(new_n34), .Y(new_n47));
  OAI22X1  g33(.A0(new_n47), .A1(new_n15), .B0(new_n27), .B1(new_n24_1), .Y(n24));
  BUFX1    g34(.A(touch_detected), .Y(touch));
  always @ (posedge clock) begin
    touch_detected <= n24;
  end
endmodule


