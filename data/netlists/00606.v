// Benchmark "top_module" written by ABC on Wed Jun 26 15:22:15 2024

module top_module ( 
    \in[0] , \in[1] , \in[2] , \in[3] , \in[4] , \in[5] , \in[6] , \in[7] ,
    \out[0] , \out[1] , \out[2] , \out[3] , \out[4] , \out[5] , \out[6] ,
    \out[7] , \out[8]   );
  input  \in[0] , \in[1] , \in[2] , \in[3] , \in[4] , \in[5] , \in[6] ,
    \in[7] ;
  output \out[0] , \out[1] , \out[2] , \out[3] , \out[4] , \out[5] , \out[6] ,
    \out[7] , \out[8] ;
  wire new_n18, new_n19, new_n20, new_n21, new_n22, new_n23, new_n24,
    new_n25, new_n26, new_n27, new_n28, new_n29, new_n30, new_n31, new_n32,
    new_n33, new_n34, new_n36, new_n38, new_n39, new_n40, new_n41, new_n43,
    new_n44, new_n45, new_n46, new_n48, new_n49, new_n50, new_n51, new_n52,
    new_n54, new_n55, new_n57, new_n58, new_n60, new_n61, new_n63, new_n64,
    new_n65;
  INVX1    g00(.A(\in[3] ), .Y(new_n18));
  XOR2X1   g01(.A(\in[1] ), .B(\in[0] ), .Y(new_n19));
  XOR2X1   g02(.A(new_n19), .B(\in[2] ), .Y(new_n20));
  XOR2X1   g03(.A(new_n20), .B(new_n18), .Y(new_n21));
  XOR2X1   g04(.A(new_n21), .B(\in[4] ), .Y(new_n22));
  XOR2X1   g05(.A(new_n22), .B(\in[5] ), .Y(new_n23));
  XOR2X1   g06(.A(new_n23), .B(\in[6] ), .Y(new_n24));
  XOR2X1   g07(.A(new_n24), .B(\in[7] ), .Y(new_n25));
  XOR2X1   g08(.A(new_n19), .B(new_n18), .Y(new_n26));
  INVX1    g09(.A(new_n26), .Y(new_n27));
  XOR2X1   g10(.A(new_n27), .B(new_n25), .Y(new_n28));
  XOR2X1   g11(.A(\in[2] ), .B(\in[0] ), .Y(new_n29));
  XOR2X1   g12(.A(new_n29), .B(new_n18), .Y(new_n30));
  XOR2X1   g13(.A(new_n30), .B(new_n28), .Y(new_n31));
  XOR2X1   g14(.A(\in[2] ), .B(\in[1] ), .Y(new_n32));
  XOR2X1   g15(.A(new_n32), .B(new_n18), .Y(new_n33));
  XOR2X1   g16(.A(new_n33), .B(new_n31), .Y(new_n34));
  XOR2X1   g17(.A(new_n34), .B(new_n21), .Y(\out[0] ));
  XOR2X1   g18(.A(new_n27), .B(new_n21), .Y(new_n36));
  XOR2X1   g19(.A(new_n36), .B(new_n33), .Y(\out[1] ));
  INVX1    g20(.A(\in[4] ), .Y(new_n38));
  XOR2X1   g21(.A(new_n19), .B(new_n38), .Y(new_n39));
  XOR2X1   g22(.A(new_n39), .B(\in[5] ), .Y(new_n40));
  XOR2X1   g23(.A(new_n40), .B(new_n27), .Y(new_n41));
  XOR2X1   g24(.A(new_n41), .B(new_n21), .Y(\out[2] ));
  INVX1    g25(.A(new_n30), .Y(new_n43));
  XOR2X1   g26(.A(new_n29), .B(new_n38), .Y(new_n44));
  XOR2X1   g27(.A(new_n44), .B(\in[6] ), .Y(new_n45));
  XOR2X1   g28(.A(new_n45), .B(new_n43), .Y(new_n46));
  XOR2X1   g29(.A(new_n46), .B(new_n21), .Y(\out[3] ));
  INVX1    g30(.A(new_n33), .Y(new_n48));
  INVX1    g31(.A(\in[5] ), .Y(new_n49));
  XOR2X1   g32(.A(new_n32), .B(new_n49), .Y(new_n50));
  XOR2X1   g33(.A(new_n50), .B(\in[6] ), .Y(new_n51));
  XOR2X1   g34(.A(new_n51), .B(new_n48), .Y(new_n52));
  XOR2X1   g35(.A(new_n52), .B(new_n21), .Y(\out[4] ));
  XOR2X1   g36(.A(\in[4] ), .B(\in[3] ), .Y(new_n54));
  XOR2X1   g37(.A(new_n54), .B(\in[5] ), .Y(new_n55));
  XOR2X1   g38(.A(new_n55), .B(\in[6] ), .Y(\out[5] ));
  XOR2X1   g39(.A(new_n26), .B(\in[7] ), .Y(new_n57));
  XOR2X1   g40(.A(new_n57), .B(new_n43), .Y(new_n58));
  XOR2X1   g41(.A(new_n58), .B(new_n33), .Y(\out[6] ));
  XOR2X1   g42(.A(new_n54), .B(\in[7] ), .Y(new_n60));
  XOR2X1   g43(.A(new_n60), .B(new_n26), .Y(new_n61));
  XOR2X1   g44(.A(new_n61), .B(new_n21), .Y(\out[7] ));
  XOR2X1   g45(.A(\in[6] ), .B(\in[5] ), .Y(new_n63));
  XOR2X1   g46(.A(new_n63), .B(new_n30), .Y(new_n64));
  XOR2X1   g47(.A(new_n64), .B(new_n48), .Y(new_n65));
  XOR2X1   g48(.A(new_n65), .B(new_n21), .Y(\out[8] ));
endmodule


