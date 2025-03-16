// Benchmark "binary_counter" written by ABC on Wed Jun 26 15:22:18 2024

module binary_counter ( clock, 
    clk, rst, en, ld, \load_data[0] , \load_data[1] , \load_data[2] ,
    \load_data[3] ,
    \count[0] , \count[1] , \count[2] , \count[3]   );
  input  clock;
  input  clk, rst, en, ld, \load_data[0] , \load_data[1] ,
    \load_data[2] , \load_data[3] ;
  output \count[0] , \count[1] , \count[2] , \count[3] ;
  reg \count[0] , \count[1] , \count[2] , \count[3] ;
  wire new_n25, new_n26_1, new_n27, new_n28, new_n29, new_n31, new_n32,
    new_n33, new_n35, new_n36, new_n37, new_n38_1, new_n40, new_n41,
    new_n42, new_n43, new_n44, n26, n30, n34, n38;
  INVX1    g00(.A(rst), .Y(new_n25));
  INVX1    g01(.A(en), .Y(new_n26_1));
  INVX1    g02(.A(\count[0] ), .Y(new_n27));
  MX2X1    g03(.A(new_n27), .B(\load_data[0] ), .S0(ld), .Y(new_n28));
  MX2X1    g04(.A(new_n28), .B(\count[0] ), .S0(new_n26_1), .Y(new_n29));
  AND2X1   g05(.A(new_n29), .B(new_n25), .Y(n26));
  XOR2X1   g06(.A(\count[1] ), .B(\count[0] ), .Y(new_n31));
  MX2X1    g07(.A(new_n31), .B(\load_data[1] ), .S0(ld), .Y(new_n32));
  MX2X1    g08(.A(new_n32), .B(\count[1] ), .S0(new_n26_1), .Y(new_n33));
  AND2X1   g09(.A(new_n33), .B(new_n25), .Y(n30));
  AND2X1   g10(.A(\count[1] ), .B(\count[0] ), .Y(new_n35));
  XOR2X1   g11(.A(new_n35), .B(\count[2] ), .Y(new_n36));
  MX2X1    g12(.A(new_n36), .B(\load_data[2] ), .S0(ld), .Y(new_n37));
  MX2X1    g13(.A(new_n37), .B(\count[2] ), .S0(new_n26_1), .Y(new_n38_1));
  AND2X1   g14(.A(new_n38_1), .B(new_n25), .Y(n34));
  INVX1    g15(.A(\count[3] ), .Y(new_n40));
  NAND3X1  g16(.A(\count[2] ), .B(\count[1] ), .C(\count[0] ), .Y(new_n41));
  XOR2X1   g17(.A(new_n41), .B(new_n40), .Y(new_n42));
  MX2X1    g18(.A(new_n42), .B(\load_data[3] ), .S0(ld), .Y(new_n43));
  MX2X1    g19(.A(new_n43), .B(\count[3] ), .S0(new_n26_1), .Y(new_n44));
  AND2X1   g20(.A(new_n44), .B(new_n25), .Y(n38));
  always @ (posedge clock) begin
    \count[0]  <= n26;
    \count[1]  <= n30;
    \count[2]  <= n34;
    \count[3]  <= n38;
  end
endmodule


