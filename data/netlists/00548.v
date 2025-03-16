// Benchmark "FIFO_pixelq_op_img_rows_V_channel_shiftReg" written by ABC on Wed Jun 26 15:22:13 2024

module FIFO_pixelq_op_img_rows_V_channel_shiftReg ( clock, 
    clk, \data[0] , \data[1] , \data[2] , \data[3] , \data[4] , \data[5] ,
    \data[6] , \data[7] , \data[8] , \data[9] , \data[10] , \data[11] , ce,
    \a[0] , \a[1] ,
    \q[0] , \q[1] , \q[2] , \q[3] , \q[4] , \q[5] , \q[6] , \q[7] , \q[8] ,
    \q[9] , \q[10] , \q[11]   );
  input  clock;
  input  clk, \data[0] , \data[1] , \data[2] , \data[3] , \data[4] ,
    \data[5] , \data[6] , \data[7] , \data[8] , \data[9] , \data[10] ,
    \data[11] , ce, \a[0] , \a[1] ;
  output \q[0] , \q[1] , \q[2] , \q[3] , \q[4] , \q[5] , \q[6] , \q[7] ,
    \q[8] , \q[9] , \q[10] , \q[11] ;
  reg \q[0] , \q[1] , \q[2] , \q[3] , \q[4] , \q[5] , \q[6] , \q[7] ,
    \q[8] , \q[9] , \q[10] , \q[11] , \SRL_SIG[0][0] , \SRL_SIG[0][1] ,
    \SRL_SIG[0][2] , \SRL_SIG[0][3] , \SRL_SIG[0][4] , \SRL_SIG[0][5] ,
    \SRL_SIG[0][6] , \SRL_SIG[0][7] , \SRL_SIG[0][8] , \SRL_SIG[0][9] ,
    \SRL_SIG[0][10] , \SRL_SIG[0][11] , \SRL_SIG[1][0] , \SRL_SIG[1][1] ,
    \SRL_SIG[1][2] , \SRL_SIG[1][3] , \SRL_SIG[1][4] , \SRL_SIG[1][5] ,
    \SRL_SIG[1][6] , \SRL_SIG[1][7] , \SRL_SIG[1][8] , \SRL_SIG[1][9] ,
    \SRL_SIG[1][10] , \SRL_SIG[1][11] , \SRL_SIG[2][0] , \SRL_SIG[2][1] ,
    \SRL_SIG[2][2] , \SRL_SIG[2][3] , \SRL_SIG[2][4] , \SRL_SIG[2][5] ,
    \SRL_SIG[2][6] , \SRL_SIG[2][7] , \SRL_SIG[2][8] , \SRL_SIG[2][9] ,
    \SRL_SIG[2][10] , \SRL_SIG[2][11] ;
  wire new_n173_1, new_n174, new_n175, new_n176, new_n177_1, new_n178,
    new_n180, new_n181_1, new_n183, new_n184, new_n186, new_n187,
    new_n189_1, new_n190, new_n192, new_n193_1, new_n195, new_n196,
    new_n198, new_n199, new_n201_1, new_n202, new_n204, new_n205_1,
    new_n207, new_n208, new_n210, new_n211, n58, n62, n66, n70, n74, n78,
    n82, n86, n90, n94, n98, n102, n106, n111, n116, n121, n126, n131,
    n136, n141, n146, n151, n156, n161, n165, n169, n173, n177, n181, n185,
    n189, n193, n197, n201, n205, n209, n213, n217, n221, n225, n229, n233,
    n237, n241, n245, n249, n253, n257;
  INVX1    g00(.A(\a[0] ), .Y(new_n173_1));
  INVX1    g01(.A(\a[1] ), .Y(new_n174));
  NAND3X1  g02(.A(\SRL_SIG[0][0] ), .B(new_n174), .C(new_n173_1), .Y(new_n175));
  AND2X1   g03(.A(\a[1] ), .B(new_n173_1), .Y(new_n176));
  AND2X1   g04(.A(new_n174), .B(\a[0] ), .Y(new_n177_1));
  AOI22X1  g05(.A0(new_n177_1), .A1(\SRL_SIG[1][0] ), .B0(new_n176), .B1(\SRL_SIG[2][0] ), .Y(new_n178));
  AOI22X1  g06(.A0(new_n178), .A1(new_n175), .B0(\a[1] ), .B1(\a[0] ), .Y(n58));
  NAND3X1  g07(.A(\SRL_SIG[0][1] ), .B(new_n174), .C(new_n173_1), .Y(new_n180));
  AOI22X1  g08(.A0(new_n177_1), .A1(\SRL_SIG[1][1] ), .B0(new_n176), .B1(\SRL_SIG[2][1] ), .Y(new_n181_1));
  AOI22X1  g09(.A0(new_n181_1), .A1(new_n180), .B0(\a[1] ), .B1(\a[0] ), .Y(n62));
  NAND3X1  g10(.A(\SRL_SIG[0][2] ), .B(new_n174), .C(new_n173_1), .Y(new_n183));
  AOI22X1  g11(.A0(new_n177_1), .A1(\SRL_SIG[1][2] ), .B0(new_n176), .B1(\SRL_SIG[2][2] ), .Y(new_n184));
  AOI22X1  g12(.A0(new_n184), .A1(new_n183), .B0(\a[1] ), .B1(\a[0] ), .Y(n66));
  NAND3X1  g13(.A(\SRL_SIG[0][3] ), .B(new_n174), .C(new_n173_1), .Y(new_n186));
  AOI22X1  g14(.A0(new_n177_1), .A1(\SRL_SIG[1][3] ), .B0(new_n176), .B1(\SRL_SIG[2][3] ), .Y(new_n187));
  AOI22X1  g15(.A0(new_n187), .A1(new_n186), .B0(\a[1] ), .B1(\a[0] ), .Y(n70));
  NAND3X1  g16(.A(\SRL_SIG[0][4] ), .B(new_n174), .C(new_n173_1), .Y(new_n189_1));
  AOI22X1  g17(.A0(new_n177_1), .A1(\SRL_SIG[1][4] ), .B0(new_n176), .B1(\SRL_SIG[2][4] ), .Y(new_n190));
  AOI22X1  g18(.A0(new_n190), .A1(new_n189_1), .B0(\a[1] ), .B1(\a[0] ), .Y(n74));
  NAND3X1  g19(.A(\SRL_SIG[0][5] ), .B(new_n174), .C(new_n173_1), .Y(new_n192));
  AOI22X1  g20(.A0(new_n177_1), .A1(\SRL_SIG[1][5] ), .B0(new_n176), .B1(\SRL_SIG[2][5] ), .Y(new_n193_1));
  AOI22X1  g21(.A0(new_n193_1), .A1(new_n192), .B0(\a[1] ), .B1(\a[0] ), .Y(n78));
  NAND3X1  g22(.A(\SRL_SIG[0][6] ), .B(new_n174), .C(new_n173_1), .Y(new_n195));
  AOI22X1  g23(.A0(new_n177_1), .A1(\SRL_SIG[1][6] ), .B0(new_n176), .B1(\SRL_SIG[2][6] ), .Y(new_n196));
  AOI22X1  g24(.A0(new_n196), .A1(new_n195), .B0(\a[1] ), .B1(\a[0] ), .Y(n82));
  NAND3X1  g25(.A(\SRL_SIG[0][7] ), .B(new_n174), .C(new_n173_1), .Y(new_n198));
  AOI22X1  g26(.A0(new_n177_1), .A1(\SRL_SIG[1][7] ), .B0(new_n176), .B1(\SRL_SIG[2][7] ), .Y(new_n199));
  AOI22X1  g27(.A0(new_n199), .A1(new_n198), .B0(\a[1] ), .B1(\a[0] ), .Y(n86));
  NAND3X1  g28(.A(\SRL_SIG[0][8] ), .B(new_n174), .C(new_n173_1), .Y(new_n201_1));
  AOI22X1  g29(.A0(new_n177_1), .A1(\SRL_SIG[1][8] ), .B0(new_n176), .B1(\SRL_SIG[2][8] ), .Y(new_n202));
  AOI22X1  g30(.A0(new_n202), .A1(new_n201_1), .B0(\a[1] ), .B1(\a[0] ), .Y(n90));
  NAND3X1  g31(.A(\SRL_SIG[0][9] ), .B(new_n174), .C(new_n173_1), .Y(new_n204));
  AOI22X1  g32(.A0(new_n177_1), .A1(\SRL_SIG[1][9] ), .B0(new_n176), .B1(\SRL_SIG[2][9] ), .Y(new_n205_1));
  AOI22X1  g33(.A0(new_n205_1), .A1(new_n204), .B0(\a[1] ), .B1(\a[0] ), .Y(n94));
  NAND3X1  g34(.A(\SRL_SIG[0][10] ), .B(new_n174), .C(new_n173_1), .Y(new_n207));
  AOI22X1  g35(.A0(new_n177_1), .A1(\SRL_SIG[1][10] ), .B0(new_n176), .B1(\SRL_SIG[2][10] ), .Y(new_n208));
  AOI22X1  g36(.A0(new_n208), .A1(new_n207), .B0(\a[1] ), .B1(\a[0] ), .Y(n98));
  NAND3X1  g37(.A(\SRL_SIG[0][11] ), .B(new_n174), .C(new_n173_1), .Y(new_n210));
  AOI22X1  g38(.A0(new_n177_1), .A1(\SRL_SIG[1][11] ), .B0(new_n176), .B1(\SRL_SIG[2][11] ), .Y(new_n211));
  AOI22X1  g39(.A0(new_n211), .A1(new_n210), .B0(\a[1] ), .B1(\a[0] ), .Y(n102));
  MX2X1    g40(.A(\SRL_SIG[0][0] ), .B(\data[0] ), .S0(ce), .Y(n106));
  MX2X1    g41(.A(\SRL_SIG[0][1] ), .B(\data[1] ), .S0(ce), .Y(n111));
  MX2X1    g42(.A(\SRL_SIG[0][2] ), .B(\data[2] ), .S0(ce), .Y(n116));
  MX2X1    g43(.A(\SRL_SIG[0][3] ), .B(\data[3] ), .S0(ce), .Y(n121));
  MX2X1    g44(.A(\SRL_SIG[0][4] ), .B(\data[4] ), .S0(ce), .Y(n126));
  MX2X1    g45(.A(\SRL_SIG[0][5] ), .B(\data[5] ), .S0(ce), .Y(n131));
  MX2X1    g46(.A(\SRL_SIG[0][6] ), .B(\data[6] ), .S0(ce), .Y(n136));
  MX2X1    g47(.A(\SRL_SIG[0][7] ), .B(\data[7] ), .S0(ce), .Y(n141));
  MX2X1    g48(.A(\SRL_SIG[0][8] ), .B(\data[8] ), .S0(ce), .Y(n146));
  MX2X1    g49(.A(\SRL_SIG[0][9] ), .B(\data[9] ), .S0(ce), .Y(n151));
  MX2X1    g50(.A(\SRL_SIG[0][10] ), .B(\data[10] ), .S0(ce), .Y(n156));
  MX2X1    g51(.A(\SRL_SIG[0][11] ), .B(\data[11] ), .S0(ce), .Y(n161));
  BUFX1    g52(.A(\SRL_SIG[0][0] ), .Y(n165));
  BUFX1    g53(.A(\SRL_SIG[0][1] ), .Y(n169));
  BUFX1    g54(.A(\SRL_SIG[0][2] ), .Y(n173));
  BUFX1    g55(.A(\SRL_SIG[0][3] ), .Y(n177));
  BUFX1    g56(.A(\SRL_SIG[0][4] ), .Y(n181));
  BUFX1    g57(.A(\SRL_SIG[0][5] ), .Y(n185));
  BUFX1    g58(.A(\SRL_SIG[0][6] ), .Y(n189));
  BUFX1    g59(.A(\SRL_SIG[0][7] ), .Y(n193));
  BUFX1    g60(.A(\SRL_SIG[0][8] ), .Y(n197));
  BUFX1    g61(.A(\SRL_SIG[0][9] ), .Y(n201));
  BUFX1    g62(.A(\SRL_SIG[0][10] ), .Y(n205));
  BUFX1    g63(.A(\SRL_SIG[0][11] ), .Y(n209));
  BUFX1    g64(.A(\SRL_SIG[1][0] ), .Y(n213));
  BUFX1    g65(.A(\SRL_SIG[1][1] ), .Y(n217));
  BUFX1    g66(.A(\SRL_SIG[1][2] ), .Y(n221));
  BUFX1    g67(.A(\SRL_SIG[1][3] ), .Y(n225));
  BUFX1    g68(.A(\SRL_SIG[1][4] ), .Y(n229));
  BUFX1    g69(.A(\SRL_SIG[1][5] ), .Y(n233));
  BUFX1    g70(.A(\SRL_SIG[1][6] ), .Y(n237));
  BUFX1    g71(.A(\SRL_SIG[1][7] ), .Y(n241));
  BUFX1    g72(.A(\SRL_SIG[1][8] ), .Y(n245));
  BUFX1    g73(.A(\SRL_SIG[1][9] ), .Y(n249));
  BUFX1    g74(.A(\SRL_SIG[1][10] ), .Y(n253));
  BUFX1    g75(.A(\SRL_SIG[1][11] ), .Y(n257));
  always @ (posedge clock) begin
    \q[0]  <= n58;
    \q[1]  <= n62;
    \q[2]  <= n66;
    \q[3]  <= n70;
    \q[4]  <= n74;
    \q[5]  <= n78;
    \q[6]  <= n82;
    \q[7]  <= n86;
    \q[8]  <= n90;
    \q[9]  <= n94;
    \q[10]  <= n98;
    \q[11]  <= n102;
    \SRL_SIG[0][0]  <= n106;
    \SRL_SIG[0][1]  <= n111;
    \SRL_SIG[0][2]  <= n116;
    \SRL_SIG[0][3]  <= n121;
    \SRL_SIG[0][4]  <= n126;
    \SRL_SIG[0][5]  <= n131;
    \SRL_SIG[0][6]  <= n136;
    \SRL_SIG[0][7]  <= n141;
    \SRL_SIG[0][8]  <= n146;
    \SRL_SIG[0][9]  <= n151;
    \SRL_SIG[0][10]  <= n156;
    \SRL_SIG[0][11]  <= n161;
    \SRL_SIG[1][0]  <= n165;
    \SRL_SIG[1][1]  <= n169;
    \SRL_SIG[1][2]  <= n173;
    \SRL_SIG[1][3]  <= n177;
    \SRL_SIG[1][4]  <= n181;
    \SRL_SIG[1][5]  <= n185;
    \SRL_SIG[1][6]  <= n189;
    \SRL_SIG[1][7]  <= n193;
    \SRL_SIG[1][8]  <= n197;
    \SRL_SIG[1][9]  <= n201;
    \SRL_SIG[1][10]  <= n205;
    \SRL_SIG[1][11]  <= n209;
    \SRL_SIG[2][0]  <= n213;
    \SRL_SIG[2][1]  <= n217;
    \SRL_SIG[2][2]  <= n221;
    \SRL_SIG[2][3]  <= n225;
    \SRL_SIG[2][4]  <= n229;
    \SRL_SIG[2][5]  <= n233;
    \SRL_SIG[2][6]  <= n237;
    \SRL_SIG[2][7]  <= n241;
    \SRL_SIG[2][8]  <= n245;
    \SRL_SIG[2][9]  <= n249;
    \SRL_SIG[2][10]  <= n253;
    \SRL_SIG[2][11]  <= n257;
  end
endmodule


