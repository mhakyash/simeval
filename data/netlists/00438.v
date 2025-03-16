// Benchmark "excess_3_converter" written by ABC on Wed Jun 26 15:22:11 2024

module excess_3_converter ( clock, 
    \binary[0] , \binary[1] , \binary[2] , \binary[3] ,
    \excess_3[0] , \excess_3[1] , \excess_3[2] , \excess_3[3] ,
    \excess_3[4] , \excess_3[5] , \excess_3[6] , \excess_3[7]   );
  input  clock;
  input  \binary[0] , \binary[1] , \binary[2] , \binary[3] ;
  output \excess_3[0] , \excess_3[1] , \excess_3[2] , \excess_3[3] ,
    \excess_3[4] , \excess_3[5] , \excess_3[6] , \excess_3[7] ;
  reg \binary_reg[0] , \binary_reg[1] , \binary_reg[2] , \binary_reg[3] ,
    \excess_3_reg[0] , \excess_3_reg[1] , \excess_3_reg[2] ,
    \excess_3_reg[3] ;
  wire new_n43, new_n45, new_n46, n25, n29, n33, n37, n42, n47, n52, n57;
  INVX1    g00(.A(\binary_reg[0] ), .Y(n42));
  XOR2X1   g01(.A(\binary_reg[1] ), .B(n42), .Y(n47));
  OR2X1    g02(.A(\binary_reg[1] ), .B(\binary_reg[0] ), .Y(new_n43));
  XOR2X1   g03(.A(new_n43), .B(\binary_reg[2] ), .Y(n52));
  INVX1    g04(.A(\binary_reg[3] ), .Y(new_n45));
  OAI21X1  g05(.A0(\binary_reg[1] ), .A1(\binary_reg[0] ), .B0(\binary_reg[2] ), .Y(new_n46));
  XOR2X1   g06(.A(new_n46), .B(new_n45), .Y(n57));
  ZERO     g07(.Y(\excess_3[4] ));
  ZERO     g08(.Y(\excess_3[5] ));
  ZERO     g09(.Y(\excess_3[6] ));
  ZERO     g10(.Y(\excess_3[7] ));
  BUFX1    g11(.A(\excess_3_reg[0] ), .Y(\excess_3[0] ));
  BUFX1    g12(.A(\excess_3_reg[1] ), .Y(\excess_3[1] ));
  BUFX1    g13(.A(\excess_3_reg[2] ), .Y(\excess_3[2] ));
  BUFX1    g14(.A(\excess_3_reg[3] ), .Y(\excess_3[3] ));
  BUFX1    g15(.A(\binary[0] ), .Y(n25));
  BUFX1    g16(.A(\binary[1] ), .Y(n29));
  BUFX1    g17(.A(\binary[2] ), .Y(n33));
  BUFX1    g18(.A(\binary[3] ), .Y(n37));
  always @ (posedge clock) begin
    \binary_reg[0]  <= n25;
    \binary_reg[1]  <= n29;
    \binary_reg[2]  <= n33;
    \binary_reg[3]  <= n37;
    \excess_3_reg[0]  <= n42;
    \excess_3_reg[1]  <= n47;
    \excess_3_reg[2]  <= n52;
    \excess_3_reg[3]  <= n57;
  end
endmodule


