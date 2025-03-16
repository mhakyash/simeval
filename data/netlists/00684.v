// Benchmark "adder_comparator_decoder" written by ABC on Wed Jun 26 15:22:17 2024

module adder_comparator_decoder ( clock, 
    \a[0] , \a[1] , \a[2] , \b[0] , \b[1] , \b[2] , \c[0] , \c[1] , \c[2] ,
    \out_leds[0] , \out_leds[1] , \out_leds[2] , \out_leds[3]   );
  input  clock;
  input  \a[0] , \a[1] , \a[2] , \b[0] , \b[1] , \b[2] , \c[0] , \c[1] ,
    \c[2] ;
  output \out_leds[0] , \out_leds[1] , \out_leds[2] , \out_leds[3] ;
  reg \result[0] , \result[1] , \result[2] , \result[3] ;
  wire new_n30, new_n31, new_n32, new_n33_1, new_n34, new_n35, new_n36,
    new_n37, new_n38_1, new_n39, new_n40, new_n41, new_n42, new_n43_1,
    new_n44, new_n45, new_n46, new_n47, new_n48, new_n49, new_n50, new_n51,
    new_n52, new_n53, new_n54, new_n55, new_n57, n28, n33, n38, n43;
  INVX1    g00(.A(\result[0] ), .Y(\out_leds[0] ));
  INVX1    g01(.A(\result[1] ), .Y(\out_leds[1] ));
  INVX1    g02(.A(\result[2] ), .Y(\out_leds[2] ));
  INVX1    g03(.A(\result[3] ), .Y(\out_leds[3] ));
  XOR2X1   g04(.A(\b[0] ), .B(\a[0] ), .Y(new_n30));
  XOR2X1   g05(.A(new_n30), .B(\c[0] ), .Y(new_n31));
  XOR2X1   g06(.A(\b[2] ), .B(\a[2] ), .Y(new_n32));
  AND2X1   g07(.A(\b[1] ), .B(\a[1] ), .Y(new_n33_1));
  XOR2X1   g08(.A(\b[1] ), .B(\a[1] ), .Y(new_n34));
  AND2X1   g09(.A(\b[0] ), .B(\a[0] ), .Y(new_n35));
  AOI21X1  g10(.A0(new_n35), .A1(new_n34), .B0(new_n33_1), .Y(new_n36));
  XOR2X1   g11(.A(new_n36), .B(new_n32), .Y(new_n37));
  XOR2X1   g12(.A(new_n37), .B(\c[2] ), .Y(new_n38_1));
  INVX1    g13(.A(\c[1] ), .Y(new_n39));
  NAND2X1  g14(.A(\b[0] ), .B(\a[0] ), .Y(new_n40));
  XOR2X1   g15(.A(new_n40), .B(new_n34), .Y(new_n41));
  NOR2X1   g16(.A(new_n41), .B(new_n39), .Y(new_n42));
  XOR2X1   g17(.A(new_n41), .B(new_n39), .Y(new_n43_1));
  AND2X1   g18(.A(new_n30), .B(\c[0] ), .Y(new_n44));
  AOI21X1  g19(.A0(new_n44), .A1(new_n43_1), .B0(new_n42), .Y(new_n45));
  XOR2X1   g20(.A(new_n45), .B(new_n38_1), .Y(new_n46));
  INVX1    g21(.A(\a[2] ), .Y(new_n47));
  XOR2X1   g22(.A(\b[2] ), .B(new_n47), .Y(new_n48));
  NAND2X1  g23(.A(\b[2] ), .B(\a[2] ), .Y(new_n49));
  OAI21X1  g24(.A0(new_n36), .A1(new_n48), .B0(new_n49), .Y(new_n50));
  INVX1    g25(.A(\c[2] ), .Y(new_n51));
  OR2X1    g26(.A(new_n37), .B(new_n51), .Y(new_n52));
  OAI21X1  g27(.A0(new_n45), .A1(new_n38_1), .B0(new_n52), .Y(new_n53));
  XOR2X1   g28(.A(new_n53), .B(new_n50), .Y(new_n54));
  XOR2X1   g29(.A(new_n44), .B(new_n43_1), .Y(new_n55));
  NAND2X1  g30(.A(new_n54), .B(new_n46), .Y(new_n57));
  MX2X1    g31(.A(new_n31), .B(\result[0] ), .S0(new_n57), .Y(n28));
  MX2X1    g32(.A(new_n55), .B(\result[1] ), .S0(new_n57), .Y(n33));
  MX2X1    g33(.A(new_n46), .B(\result[2] ), .S0(new_n57), .Y(n38));
  MX2X1    g34(.A(new_n54), .B(\result[3] ), .S0(new_n57), .Y(n43));
  always @ (posedge clock) begin
    \result[0]  <= n28;
    \result[1]  <= n33;
    \result[2]  <= n38;
    \result[3]  <= n43;
  end
endmodule


