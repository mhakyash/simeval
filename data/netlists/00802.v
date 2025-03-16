// Benchmark "data_filter" written by ABC on Wed Jun 26 15:22:20 2024

module data_filter ( clock, 
    \input_signal[0] , \input_signal[1] , \input_signal[2] ,
    \input_signal[3] , \input_signal[4] , \input_signal[5] ,
    \input_signal[6] , \input_signal[7] , \input_signal[8] ,
    \input_signal[9] , \input_signal[10] , \input_signal[11] ,
    \input_signal[12] , \input_signal[13] , \input_signal[14] ,
    \input_signal[15] , \input_signal[16] , \input_signal[17] ,
    \input_signal[18] , \input_signal[19] , \input_signal[20] ,
    \input_signal[21] , \input_signal[22] , \input_signal[23] ,
    \input_signal[24] , \input_signal[25] , \input_signal[26] ,
    \input_signal[27] , \input_signal[28] , \input_signal[29] ,
    \input_signal[30] , \input_signal[31] ,
    \filtered_signal[0] , \filtered_signal[1] , \filtered_signal[2] ,
    \filtered_signal[3] , \filtered_signal[4] , \filtered_signal[5] ,
    \filtered_signal[6] , \filtered_signal[7] , \filtered_signal[8] ,
    \filtered_signal[9] , \filtered_signal[10] , \filtered_signal[11] ,
    \filtered_signal[12] , \filtered_signal[13] , \filtered_signal[14] ,
    \filtered_signal[15] , \filtered_signal[16] , \filtered_signal[17] ,
    \filtered_signal[18] , \filtered_signal[19] , \filtered_signal[20] ,
    \filtered_signal[21] , \filtered_signal[22] , \filtered_signal[23] ,
    \filtered_signal[24] , \filtered_signal[25] , \filtered_signal[26] ,
    \filtered_signal[27] , \filtered_signal[28] , \filtered_signal[29] ,
    \filtered_signal[30] , \filtered_signal[31]   );
  input  clock;
  input  \input_signal[0] , \input_signal[1] , \input_signal[2] ,
    \input_signal[3] , \input_signal[4] , \input_signal[5] ,
    \input_signal[6] , \input_signal[7] , \input_signal[8] ,
    \input_signal[9] , \input_signal[10] , \input_signal[11] ,
    \input_signal[12] , \input_signal[13] , \input_signal[14] ,
    \input_signal[15] , \input_signal[16] , \input_signal[17] ,
    \input_signal[18] , \input_signal[19] , \input_signal[20] ,
    \input_signal[21] , \input_signal[22] , \input_signal[23] ,
    \input_signal[24] , \input_signal[25] , \input_signal[26] ,
    \input_signal[27] , \input_signal[28] , \input_signal[29] ,
    \input_signal[30] , \input_signal[31] ;
  output \filtered_signal[0] , \filtered_signal[1] , \filtered_signal[2] ,
    \filtered_signal[3] , \filtered_signal[4] , \filtered_signal[5] ,
    \filtered_signal[6] , \filtered_signal[7] , \filtered_signal[8] ,
    \filtered_signal[9] , \filtered_signal[10] , \filtered_signal[11] ,
    \filtered_signal[12] , \filtered_signal[13] , \filtered_signal[14] ,
    \filtered_signal[15] , \filtered_signal[16] , \filtered_signal[17] ,
    \filtered_signal[18] , \filtered_signal[19] , \filtered_signal[20] ,
    \filtered_signal[21] , \filtered_signal[22] , \filtered_signal[23] ,
    \filtered_signal[24] , \filtered_signal[25] , \filtered_signal[26] ,
    \filtered_signal[27] , \filtered_signal[28] , \filtered_signal[29] ,
    \filtered_signal[30] , \filtered_signal[31] ;
  reg \filtered_value[28] , \filtered_value[29] , \filtered_value[30] ,
    \filtered_value[31] , \filtered_value[0] , \filtered_value[1] ,
    \filtered_value[2] , \filtered_value[3] , \filtered_value[4] ,
    \filtered_value[5] , \filtered_value[6] , \filtered_value[7] ,
    \filtered_value[8] , \filtered_value[9] , \filtered_value[10] ,
    \filtered_value[11] , \filtered_value[12] , \filtered_value[13] ,
    \filtered_value[14] , \filtered_value[15] , \filtered_value[16] ,
    \filtered_value[17] , \filtered_value[18] , \filtered_value[19] ,
    \filtered_value[20] , \filtered_value[21] , \filtered_value[22] ,
    \filtered_value[23] , \filtered_value[24] , \filtered_value[25] ,
    \filtered_value[26] , \filtered_value[27] ;
  wire n129, n133, n137, n141, n145, n149, n153, n157, n161, n165, n169,
    n173, n177, n181, n185, n189, n193, n197, n201, n205, n209, n213, n217,
    n221, n225, n229, n233, n237, n241, n245, n249, n253;
  BUFX1    g00(.A(\filtered_value[0] ), .Y(\filtered_signal[0] ));
  BUFX1    g01(.A(\filtered_value[1] ), .Y(\filtered_signal[1] ));
  BUFX1    g02(.A(\filtered_value[2] ), .Y(\filtered_signal[2] ));
  BUFX1    g03(.A(\filtered_value[3] ), .Y(\filtered_signal[3] ));
  BUFX1    g04(.A(\filtered_value[4] ), .Y(\filtered_signal[4] ));
  BUFX1    g05(.A(\filtered_value[5] ), .Y(\filtered_signal[5] ));
  BUFX1    g06(.A(\filtered_value[6] ), .Y(\filtered_signal[6] ));
  BUFX1    g07(.A(\filtered_value[7] ), .Y(\filtered_signal[7] ));
  BUFX1    g08(.A(\filtered_value[8] ), .Y(\filtered_signal[8] ));
  BUFX1    g09(.A(\filtered_value[9] ), .Y(\filtered_signal[9] ));
  BUFX1    g10(.A(\filtered_value[10] ), .Y(\filtered_signal[10] ));
  BUFX1    g11(.A(\filtered_value[11] ), .Y(\filtered_signal[11] ));
  BUFX1    g12(.A(\filtered_value[12] ), .Y(\filtered_signal[12] ));
  BUFX1    g13(.A(\filtered_value[13] ), .Y(\filtered_signal[13] ));
  BUFX1    g14(.A(\filtered_value[14] ), .Y(\filtered_signal[14] ));
  BUFX1    g15(.A(\filtered_value[15] ), .Y(\filtered_signal[15] ));
  BUFX1    g16(.A(\filtered_value[16] ), .Y(\filtered_signal[16] ));
  BUFX1    g17(.A(\filtered_value[17] ), .Y(\filtered_signal[17] ));
  BUFX1    g18(.A(\filtered_value[18] ), .Y(\filtered_signal[18] ));
  BUFX1    g19(.A(\filtered_value[19] ), .Y(\filtered_signal[19] ));
  BUFX1    g20(.A(\filtered_value[20] ), .Y(\filtered_signal[20] ));
  BUFX1    g21(.A(\filtered_value[21] ), .Y(\filtered_signal[21] ));
  BUFX1    g22(.A(\filtered_value[22] ), .Y(\filtered_signal[22] ));
  BUFX1    g23(.A(\filtered_value[23] ), .Y(\filtered_signal[23] ));
  BUFX1    g24(.A(\filtered_value[24] ), .Y(\filtered_signal[24] ));
  BUFX1    g25(.A(\filtered_value[25] ), .Y(\filtered_signal[25] ));
  BUFX1    g26(.A(\filtered_value[26] ), .Y(\filtered_signal[26] ));
  BUFX1    g27(.A(\filtered_value[27] ), .Y(\filtered_signal[27] ));
  BUFX1    g28(.A(\filtered_value[28] ), .Y(\filtered_signal[28] ));
  BUFX1    g29(.A(\filtered_value[29] ), .Y(\filtered_signal[29] ));
  BUFX1    g30(.A(\filtered_value[30] ), .Y(\filtered_signal[30] ));
  BUFX1    g31(.A(\filtered_value[31] ), .Y(\filtered_signal[31] ));
  BUFX1    g32(.A(\input_signal[28] ), .Y(n129));
  BUFX1    g33(.A(\input_signal[29] ), .Y(n133));
  BUFX1    g34(.A(\input_signal[30] ), .Y(n137));
  BUFX1    g35(.A(\input_signal[31] ), .Y(n141));
  BUFX1    g36(.A(\input_signal[0] ), .Y(n145));
  BUFX1    g37(.A(\input_signal[1] ), .Y(n149));
  BUFX1    g38(.A(\input_signal[2] ), .Y(n153));
  BUFX1    g39(.A(\input_signal[3] ), .Y(n157));
  BUFX1    g40(.A(\input_signal[4] ), .Y(n161));
  BUFX1    g41(.A(\input_signal[5] ), .Y(n165));
  BUFX1    g42(.A(\input_signal[6] ), .Y(n169));
  BUFX1    g43(.A(\input_signal[7] ), .Y(n173));
  BUFX1    g44(.A(\input_signal[8] ), .Y(n177));
  BUFX1    g45(.A(\input_signal[9] ), .Y(n181));
  BUFX1    g46(.A(\input_signal[10] ), .Y(n185));
  BUFX1    g47(.A(\input_signal[11] ), .Y(n189));
  BUFX1    g48(.A(\input_signal[12] ), .Y(n193));
  BUFX1    g49(.A(\input_signal[13] ), .Y(n197));
  BUFX1    g50(.A(\input_signal[14] ), .Y(n201));
  BUFX1    g51(.A(\input_signal[15] ), .Y(n205));
  BUFX1    g52(.A(\input_signal[16] ), .Y(n209));
  BUFX1    g53(.A(\input_signal[17] ), .Y(n213));
  BUFX1    g54(.A(\input_signal[18] ), .Y(n217));
  BUFX1    g55(.A(\input_signal[19] ), .Y(n221));
  BUFX1    g56(.A(\input_signal[20] ), .Y(n225));
  BUFX1    g57(.A(\input_signal[21] ), .Y(n229));
  BUFX1    g58(.A(\input_signal[22] ), .Y(n233));
  BUFX1    g59(.A(\input_signal[23] ), .Y(n237));
  BUFX1    g60(.A(\input_signal[24] ), .Y(n241));
  BUFX1    g61(.A(\input_signal[25] ), .Y(n245));
  BUFX1    g62(.A(\input_signal[26] ), .Y(n249));
  BUFX1    g63(.A(\input_signal[27] ), .Y(n253));
  always @ (posedge clock) begin
    \filtered_value[28]  <= n129;
    \filtered_value[29]  <= n133;
    \filtered_value[30]  <= n137;
    \filtered_value[31]  <= n141;
    \filtered_value[0]  <= n145;
    \filtered_value[1]  <= n149;
    \filtered_value[2]  <= n153;
    \filtered_value[3]  <= n157;
    \filtered_value[4]  <= n161;
    \filtered_value[5]  <= n165;
    \filtered_value[6]  <= n169;
    \filtered_value[7]  <= n173;
    \filtered_value[8]  <= n177;
    \filtered_value[9]  <= n181;
    \filtered_value[10]  <= n185;
    \filtered_value[11]  <= n189;
    \filtered_value[12]  <= n193;
    \filtered_value[13]  <= n197;
    \filtered_value[14]  <= n201;
    \filtered_value[15]  <= n205;
    \filtered_value[16]  <= n209;
    \filtered_value[17]  <= n213;
    \filtered_value[18]  <= n217;
    \filtered_value[19]  <= n221;
    \filtered_value[20]  <= n225;
    \filtered_value[21]  <= n229;
    \filtered_value[22]  <= n233;
    \filtered_value[23]  <= n237;
    \filtered_value[24]  <= n241;
    \filtered_value[25]  <= n245;
    \filtered_value[26]  <= n249;
    \filtered_value[27]  <= n253;
  end
endmodule


