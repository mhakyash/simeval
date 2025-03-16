// Benchmark "pipelined_dff" written by ABC on Wed Jun 26 15:22:22 2024

module pipelined_dff ( clock, 
    clk, reset, \d[0] , \d[1] , \d[2] , \d[3] , \d[4] , \d[5] , \d[6] ,
    \d[7] ,
    \q[0] , \q[1] , \q[2] , \q[3] , \q[4] , \q[5] , \q[6] , \q[7]   );
  input  clock;
  input  clk, reset, \d[0] , \d[1] , \d[2] , \d[3] , \d[4] , \d[5] ,
    \d[6] , \d[7] ;
  output \q[0] , \q[1] , \q[2] , \q[3] , \q[4] , \q[5] , \q[6] , \q[7] ;
  reg \d2[0] , \d2[1] , \d2[2] , \d2[3] , \d2[4] , \d2[5] , \d2[6] ,
    \d2[7] , \d3[0] , \d3[1] , \d3[2] , \d3[3] , \d3[4] , \d3[5] , \d3[6] ,
    \d3[7] , \d4[0] , \d4[1] , \d4[2] , \d4[3] , \d4[4] , \d4[5] , \d4[6] ,
    \d4[7] , \lfsr[0] , \lfsr[1] , \lfsr[2] , \lfsr[3] , \lfsr[4] ,
    \lfsr[5] , \lfsr[6] , \lfsr[7] , \d1[0] , \d1[1] , \d1[2] , \d1[3] ,
    \d1[4] , \d1[5] , \d1[6] , \d1[7] , \d5[0] , \d5[1] , \d5[2] , \d5[3] ,
    \d5[4] , \d5[5] , \d5[6] , \d5[7] , \d6[0] , \d6[1] , \d6[2] , \d6[3] ,
    \d6[4] , \d6[5] , \d6[6] , \d6[7] , \d7[0] , \d7[1] , \d7[2] , \d7[3] ,
    \d7[4] , \d7[5] , \d7[6] , \d7[7] , \d8[0] , \d8[1] , \d8[2] , \d8[3] ,
    \d8[4] , \d8[5] , \d8[6] , \d8[7] ;
  wire new_n236, new_n260, new_n269, new_n270, new_n271, new_n272,
    new_n273_1, new_n274, new_n275, new_n278_1, new_n281, new_n284, n38,
    n43, n48, n53, n58, n63, n68, n73, n78, n83, n88, n93, n98, n103, n108,
    n113, n118, n123, n128, n133, n138, n143, n148, n153, n158, n163, n168,
    n173, n178, n183, n188, n193, n198, n203, n208, n213, n218, n223, n228,
    n233, n238, n243, n248, n253, n258, n263, n268, n273, n278, n283, n288,
    n293, n298, n303, n308, n313, n318, n323, n328, n333, n338, n343, n348,
    n353, n358, n363, n368, n373, n378, n383, n388, n393;
  OR2X1    g00(.A(\d1[0] ), .B(reset), .Y(n38));
  INVX1    g01(.A(reset), .Y(new_n236));
  AND2X1   g02(.A(\d1[1] ), .B(new_n236), .Y(n43));
  OR2X1    g03(.A(\d1[2] ), .B(reset), .Y(n48));
  AND2X1   g04(.A(\d1[3] ), .B(new_n236), .Y(n53));
  OR2X1    g05(.A(\d1[4] ), .B(reset), .Y(n58));
  AND2X1   g06(.A(\d1[5] ), .B(new_n236), .Y(n63));
  OR2X1    g07(.A(\d1[6] ), .B(reset), .Y(n68));
  AND2X1   g08(.A(\d1[7] ), .B(new_n236), .Y(n73));
  OR2X1    g09(.A(\d2[0] ), .B(reset), .Y(n78));
  AND2X1   g10(.A(\d2[1] ), .B(new_n236), .Y(n83));
  OR2X1    g11(.A(\d2[2] ), .B(reset), .Y(n88));
  AND2X1   g12(.A(\d2[3] ), .B(new_n236), .Y(n93));
  AND2X1   g13(.A(\d2[4] ), .B(new_n236), .Y(n98));
  OR2X1    g14(.A(\d2[5] ), .B(reset), .Y(n103));
  AND2X1   g15(.A(\d2[6] ), .B(new_n236), .Y(n108));
  OR2X1    g16(.A(\d2[7] ), .B(reset), .Y(n113));
  AND2X1   g17(.A(\d3[0] ), .B(new_n236), .Y(n118));
  OR2X1    g18(.A(\d3[1] ), .B(reset), .Y(n123));
  AND2X1   g19(.A(\d3[2] ), .B(new_n236), .Y(n128));
  OR2X1    g20(.A(\d3[3] ), .B(reset), .Y(n133));
  OR2X1    g21(.A(\d3[4] ), .B(reset), .Y(n138));
  AND2X1   g22(.A(\d3[5] ), .B(new_n236), .Y(n143));
  OR2X1    g23(.A(\d3[6] ), .B(reset), .Y(n148));
  AND2X1   g24(.A(\d3[7] ), .B(new_n236), .Y(n153));
  XOR2X1   g25(.A(\lfsr[7] ), .B(\lfsr[2] ), .Y(new_n260));
  AND2X1   g26(.A(new_n260), .B(new_n236), .Y(n158));
  AND2X1   g27(.A(\lfsr[0] ), .B(new_n236), .Y(n163));
  AND2X1   g28(.A(\lfsr[1] ), .B(new_n236), .Y(n168));
  AND2X1   g29(.A(\lfsr[2] ), .B(new_n236), .Y(n173));
  OR2X1    g30(.A(\lfsr[3] ), .B(reset), .Y(n178));
  OR2X1    g31(.A(\lfsr[4] ), .B(reset), .Y(n183));
  OR2X1    g32(.A(\lfsr[5] ), .B(reset), .Y(n188));
  OR2X1    g33(.A(\lfsr[6] ), .B(reset), .Y(n193));
  INVX1    g34(.A(\d[0] ), .Y(new_n269));
  OR4X1    g35(.A(\lfsr[5] ), .B(\lfsr[4] ), .C(\lfsr[3] ), .D(\lfsr[2] ), .Y(new_n270));
  OR4X1    g36(.A(\lfsr[7] ), .B(\lfsr[6] ), .C(\lfsr[1] ), .D(\lfsr[0] ), .Y(new_n271));
  NOR2X1   g37(.A(new_n271), .B(new_n270), .Y(new_n272));
  INVX1    g38(.A(\lfsr[2] ), .Y(new_n273_1));
  NAND2X1  g39(.A(\lfsr[5] ), .B(\lfsr[4] ), .Y(new_n274));
  NOR4X1   g40(.A(new_n274), .B(new_n271), .C(\lfsr[3] ), .D(new_n273_1), .Y(new_n275));
  NOR4X1   g41(.A(new_n275), .B(new_n272), .C(new_n269), .D(reset), .Y(n198));
  OR4X1    g42(.A(new_n275), .B(new_n272), .C(\d[1] ), .D(reset), .Y(n203));
  INVX1    g43(.A(\d[2] ), .Y(new_n278_1));
  NOR4X1   g44(.A(new_n275), .B(new_n272), .C(new_n278_1), .D(reset), .Y(n208));
  OR4X1    g45(.A(new_n275), .B(new_n272), .C(\d[3] ), .D(reset), .Y(n213));
  INVX1    g46(.A(\d[4] ), .Y(new_n281));
  NOR4X1   g47(.A(new_n275), .B(new_n272), .C(new_n281), .D(reset), .Y(n218));
  OR4X1    g48(.A(new_n275), .B(new_n272), .C(\d[5] ), .D(reset), .Y(n223));
  INVX1    g49(.A(\d[6] ), .Y(new_n284));
  NOR4X1   g50(.A(new_n275), .B(new_n272), .C(new_n284), .D(reset), .Y(n228));
  OR4X1    g51(.A(new_n275), .B(new_n272), .C(\d[7] ), .D(reset), .Y(n233));
  OR2X1    g52(.A(\d4[0] ), .B(reset), .Y(n238));
  OR2X1    g53(.A(\d4[1] ), .B(reset), .Y(n243));
  AND2X1   g54(.A(\d4[2] ), .B(new_n236), .Y(n248));
  AND2X1   g55(.A(\d4[3] ), .B(new_n236), .Y(n253));
  OR2X1    g56(.A(\d4[4] ), .B(reset), .Y(n258));
  OR2X1    g57(.A(\d4[5] ), .B(reset), .Y(n263));
  AND2X1   g58(.A(\d4[6] ), .B(new_n236), .Y(n268));
  AND2X1   g59(.A(\d4[7] ), .B(new_n236), .Y(n273));
  AND2X1   g60(.A(\d5[0] ), .B(new_n236), .Y(n278));
  AND2X1   g61(.A(\d5[1] ), .B(new_n236), .Y(n283));
  OR2X1    g62(.A(\d5[2] ), .B(reset), .Y(n288));
  OR2X1    g63(.A(\d5[3] ), .B(reset), .Y(n293));
  AND2X1   g64(.A(\d5[4] ), .B(new_n236), .Y(n298));
  AND2X1   g65(.A(\d5[5] ), .B(new_n236), .Y(n303));
  OR2X1    g66(.A(\d5[6] ), .B(reset), .Y(n308));
  OR2X1    g67(.A(\d5[7] ), .B(reset), .Y(n313));
  OR2X1    g68(.A(\d6[0] ), .B(reset), .Y(n318));
  OR2X1    g69(.A(\d6[1] ), .B(reset), .Y(n323));
  AND2X1   g70(.A(\d6[2] ), .B(new_n236), .Y(n328));
  AND2X1   g71(.A(\d6[3] ), .B(new_n236), .Y(n333));
  AND2X1   g72(.A(\d6[4] ), .B(new_n236), .Y(n338));
  AND2X1   g73(.A(\d6[5] ), .B(new_n236), .Y(n343));
  OR2X1    g74(.A(\d6[6] ), .B(reset), .Y(n348));
  OR2X1    g75(.A(\d6[7] ), .B(reset), .Y(n353));
  AND2X1   g76(.A(\d7[0] ), .B(new_n236), .Y(n358));
  AND2X1   g77(.A(\d7[1] ), .B(new_n236), .Y(n363));
  OR2X1    g78(.A(\d7[2] ), .B(reset), .Y(n368));
  OR2X1    g79(.A(\d7[3] ), .B(reset), .Y(n373));
  OR2X1    g80(.A(\d7[4] ), .B(reset), .Y(n378));
  OR2X1    g81(.A(\d7[5] ), .B(reset), .Y(n383));
  AND2X1   g82(.A(\d7[6] ), .B(new_n236), .Y(n388));
  AND2X1   g83(.A(\d7[7] ), .B(new_n236), .Y(n393));
  BUFX1    g84(.A(\d8[0] ), .Y(\q[0] ));
  BUFX1    g85(.A(\d8[1] ), .Y(\q[1] ));
  BUFX1    g86(.A(\d8[2] ), .Y(\q[2] ));
  BUFX1    g87(.A(\d8[3] ), .Y(\q[3] ));
  BUFX1    g88(.A(\d8[4] ), .Y(\q[4] ));
  BUFX1    g89(.A(\d8[5] ), .Y(\q[5] ));
  BUFX1    g90(.A(\d8[6] ), .Y(\q[6] ));
  BUFX1    g91(.A(\d8[7] ), .Y(\q[7] ));
  always @ (posedge clock) begin
    \d2[0]  <= n38;
    \d2[1]  <= n43;
    \d2[2]  <= n48;
    \d2[3]  <= n53;
    \d2[4]  <= n58;
    \d2[5]  <= n63;
    \d2[6]  <= n68;
    \d2[7]  <= n73;
    \d3[0]  <= n78;
    \d3[1]  <= n83;
    \d3[2]  <= n88;
    \d3[3]  <= n93;
    \d3[4]  <= n98;
    \d3[5]  <= n103;
    \d3[6]  <= n108;
    \d3[7]  <= n113;
    \d4[0]  <= n118;
    \d4[1]  <= n123;
    \d4[2]  <= n128;
    \d4[3]  <= n133;
    \d4[4]  <= n138;
    \d4[5]  <= n143;
    \d4[6]  <= n148;
    \d4[7]  <= n153;
    \lfsr[0]  <= n158;
    \lfsr[1]  <= n163;
    \lfsr[2]  <= n168;
    \lfsr[3]  <= n173;
    \lfsr[4]  <= n178;
    \lfsr[5]  <= n183;
    \lfsr[6]  <= n188;
    \lfsr[7]  <= n193;
    \d1[0]  <= n198;
    \d1[1]  <= n203;
    \d1[2]  <= n208;
    \d1[3]  <= n213;
    \d1[4]  <= n218;
    \d1[5]  <= n223;
    \d1[6]  <= n228;
    \d1[7]  <= n233;
    \d5[0]  <= n238;
    \d5[1]  <= n243;
    \d5[2]  <= n248;
    \d5[3]  <= n253;
    \d5[4]  <= n258;
    \d5[5]  <= n263;
    \d5[6]  <= n268;
    \d5[7]  <= n273;
    \d6[0]  <= n278;
    \d6[1]  <= n283;
    \d6[2]  <= n288;
    \d6[3]  <= n293;
    \d6[4]  <= n298;
    \d6[5]  <= n303;
    \d6[6]  <= n308;
    \d6[7]  <= n313;
    \d7[0]  <= n318;
    \d7[1]  <= n323;
    \d7[2]  <= n328;
    \d7[3]  <= n333;
    \d7[4]  <= n338;
    \d7[5]  <= n343;
    \d7[6]  <= n348;
    \d7[7]  <= n353;
    \d8[0]  <= n358;
    \d8[1]  <= n363;
    \d8[2]  <= n368;
    \d8[3]  <= n373;
    \d8[4]  <= n378;
    \d8[5]  <= n383;
    \d8[6]  <= n388;
    \d8[7]  <= n393;
  end
endmodule


