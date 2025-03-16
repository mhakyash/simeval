// Benchmark "edge_detector" written by ABC on Wed Jun 26 15:21:57 2024

module edge_detector ( clock, 
    clk, \in[0] , \in[1] , \in[2] , \in[3] , \in[4] , \in[5] , \in[6] ,
    \in[7] ,
    \out[0] , \out[1] , \out[2] , \out[3] , \out[4] , \out[5] , \out[6] ,
    \out[7]   );
  input  clock;
  input  clk, \in[0] , \in[1] , \in[2] , \in[3] , \in[4] , \in[5] ,
    \in[6] , \in[7] ;
  output \out[0] , \out[1] , \out[2] , \out[3] , \out[4] , \out[5] , \out[6] ,
    \out[7] ;
  reg \curr_in[0] , \curr_in[1] , \curr_in[2] , \curr_in[3] , \curr_in[4] ,
    \curr_in[5] , \curr_in[6] , \curr_in[7] , \next_in[0] , \next_in[1] ,
    \next_in[2] , \next_in[3] , \next_in[4] , \next_in[5] , \next_in[6] ,
    \next_in[7] , \out[0] , \out[1] , \out[2] , \out[3] , \out[4] ,
    \out[5] , \out[6] , \out[7] , \prev_in[0] , \prev_in[1] , \prev_in[2] ,
    \prev_in[3] , \prev_in[4] , \prev_in[5] , \prev_in[6] , \prev_in[7] ,
    \state[0] , \state[1] , \state[2] , \state[3] ;
  wire new_n134, new_n135_1, new_n136, new_n137, new_n138, new_n139_1,
    new_n140, new_n141, new_n142, new_n143_1, new_n144, new_n145,
    new_n147_1, n36, n41, n46, n51, n56, n61, n66, n71, n75, n78, n81, n84,
    n87, n90, n93, n96, n100, n104, n108, n112, n116, n120, n124, n128,
    n131, n135, n139, n143, n147, n151, n155, n159, n164, n169, n174, n177;
  MX2X1    g00(.A(\out[0] ), .B(\next_in[0] ), .S0(\state[3] ), .Y(n100));
  MX2X1    g01(.A(\out[1] ), .B(\next_in[1] ), .S0(\state[3] ), .Y(n104));
  MX2X1    g02(.A(\out[2] ), .B(\next_in[2] ), .S0(\state[3] ), .Y(n108));
  MX2X1    g03(.A(\out[3] ), .B(\next_in[3] ), .S0(\state[3] ), .Y(n112));
  MX2X1    g04(.A(\out[4] ), .B(\next_in[4] ), .S0(\state[3] ), .Y(n116));
  MX2X1    g05(.A(\out[5] ), .B(\next_in[5] ), .S0(\state[3] ), .Y(n120));
  MX2X1    g06(.A(\out[6] ), .B(\next_in[6] ), .S0(\state[3] ), .Y(n124));
  MX2X1    g07(.A(\out[7] ), .B(\next_in[7] ), .S0(\state[3] ), .Y(n128));
  INVX1    g08(.A(\state[0] ), .Y(new_n134));
  XOR2X1   g09(.A(\prev_in[2] ), .B(\curr_in[2] ), .Y(new_n135_1));
  XOR2X1   g10(.A(\prev_in[3] ), .B(\curr_in[3] ), .Y(new_n136));
  XOR2X1   g11(.A(\prev_in[0] ), .B(\curr_in[0] ), .Y(new_n137));
  XOR2X1   g12(.A(\prev_in[1] ), .B(\curr_in[1] ), .Y(new_n138));
  OR4X1    g13(.A(new_n138), .B(new_n137), .C(new_n136), .D(new_n135_1), .Y(new_n139_1));
  XOR2X1   g14(.A(\prev_in[6] ), .B(\curr_in[6] ), .Y(new_n140));
  XOR2X1   g15(.A(\prev_in[7] ), .B(\curr_in[7] ), .Y(new_n141));
  XOR2X1   g16(.A(\prev_in[4] ), .B(\curr_in[4] ), .Y(new_n142));
  XOR2X1   g17(.A(\prev_in[5] ), .B(\curr_in[5] ), .Y(new_n143_1));
  OR4X1    g18(.A(new_n143_1), .B(new_n142), .C(new_n141), .D(new_n140), .Y(new_n144));
  NOR3X1   g19(.A(new_n144), .B(new_n139_1), .C(new_n134), .Y(new_n145));
  OR2X1    g20(.A(new_n145), .B(\state[3] ), .Y(n164));
  OR2X1    g21(.A(new_n144), .B(new_n139_1), .Y(new_n147_1));
  AND2X1   g22(.A(new_n147_1), .B(\state[0] ), .Y(n174));
  BUFX1    g23(.A(\next_in[0] ), .Y(n36));
  BUFX1    g24(.A(\next_in[1] ), .Y(n41));
  BUFX1    g25(.A(\next_in[2] ), .Y(n46));
  BUFX1    g26(.A(\next_in[3] ), .Y(n51));
  BUFX1    g27(.A(\next_in[4] ), .Y(n56));
  BUFX1    g28(.A(\next_in[5] ), .Y(n61));
  BUFX1    g29(.A(\next_in[6] ), .Y(n66));
  BUFX1    g30(.A(\next_in[7] ), .Y(n71));
  BUFX1    g31(.A(\in[0] ), .Y(n75));
  BUFX1    g32(.A(\in[1] ), .Y(n78));
  BUFX1    g33(.A(\in[2] ), .Y(n81));
  BUFX1    g34(.A(\in[3] ), .Y(n84));
  BUFX1    g35(.A(\in[4] ), .Y(n87));
  BUFX1    g36(.A(\in[5] ), .Y(n90));
  BUFX1    g37(.A(\in[6] ), .Y(n93));
  BUFX1    g38(.A(\in[7] ), .Y(n96));
  BUFX1    g39(.A(\curr_in[0] ), .Y(n131));
  BUFX1    g40(.A(\curr_in[1] ), .Y(n135));
  BUFX1    g41(.A(\curr_in[2] ), .Y(n139));
  BUFX1    g42(.A(\curr_in[3] ), .Y(n143));
  BUFX1    g43(.A(\curr_in[4] ), .Y(n147));
  BUFX1    g44(.A(\curr_in[5] ), .Y(n151));
  BUFX1    g45(.A(\curr_in[6] ), .Y(n155));
  BUFX1    g46(.A(\curr_in[7] ), .Y(n159));
  BUFX1    g47(.A(\state[2] ), .Y(n169));
  BUFX1    g48(.A(\state[1] ), .Y(n177));
  always @ (posedge clock) begin
    \curr_in[0]  <= n36;
    \curr_in[1]  <= n41;
    \curr_in[2]  <= n46;
    \curr_in[3]  <= n51;
    \curr_in[4]  <= n56;
    \curr_in[5]  <= n61;
    \curr_in[6]  <= n66;
    \curr_in[7]  <= n71;
    \next_in[0]  <= n75;
    \next_in[1]  <= n78;
    \next_in[2]  <= n81;
    \next_in[3]  <= n84;
    \next_in[4]  <= n87;
    \next_in[5]  <= n90;
    \next_in[6]  <= n93;
    \next_in[7]  <= n96;
    \out[0]  <= n100;
    \out[1]  <= n104;
    \out[2]  <= n108;
    \out[3]  <= n112;
    \out[4]  <= n116;
    \out[5]  <= n120;
    \out[6]  <= n124;
    \out[7]  <= n128;
    \prev_in[0]  <= n131;
    \prev_in[1]  <= n135;
    \prev_in[2]  <= n139;
    \prev_in[3]  <= n143;
    \prev_in[4]  <= n147;
    \prev_in[5]  <= n151;
    \prev_in[6]  <= n155;
    \prev_in[7]  <= n159;
    \state[0]  <= n164;
    \state[1]  <= n169;
    \state[2]  <= n174;
    \state[3]  <= n177;
  end
endmodule


