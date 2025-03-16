// Benchmark "ShiftLeft4" written by ABC on Wed Jun 26 15:22:23 2024

module ShiftLeft4 ( clock, 
    clk, reset, \in[0] , \in[1] , \in[2] , \in[3] , \in[4] , \in[5] ,
    \in[6] , \in[7] , \in[8] , \in[9] , \in[10] , \in[11] , \in[12] ,
    \in[13] , \in[14] , \in[15] ,
    \out[0] , \out[1] , \out[2] , \out[3] , \out[4] , \out[5] , \out[6] ,
    \out[7] , \out[8] , \out[9] , \out[10] , \out[11] , \out[12] ,
    \out[13] , \out[14] , \out[15] , valid  );
  input  clock;
  input  clk, reset, \in[0] , \in[1] , \in[2] , \in[3] , \in[4] ,
    \in[5] , \in[6] , \in[7] , \in[8] , \in[9] , \in[10] , \in[11] ,
    \in[12] , \in[13] , \in[14] , \in[15] ;
  output \out[0] , \out[1] , \out[2] , \out[3] , \out[4] , \out[5] , \out[6] ,
    \out[7] , \out[8] , \out[9] , \out[10] , \out[11] , \out[12] ,
    \out[13] , \out[14] , \out[15] , valid;
  reg \shifted_out[4] , \shifted_out[5] , \shifted_out[6] ,
    \shifted_out[7] , \shifted_out[8] , \shifted_out[9] ,
    \shifted_out[10] , \shifted_out[11] , \shifted_out[12] ,
    \shifted_out[13] , \shifted_out[14] , \shifted_out[15] , valid_reg,
    \count[0] , \count[1] , \count[2] , \count[3] ;
  wire new_n91, new_n92_1, new_n94, new_n96, new_n98, new_n100, new_n102_1,
    new_n104, new_n106, new_n108, new_n110, new_n112_1, new_n114, new_n118,
    new_n119, new_n121, new_n122_1, new_n124, new_n125, n72, n77, n82, n87,
    n92, n97, n102, n107, n112, n117, n122, n127, n132, n137, n142, n147,
    n152;
  INVX1    g00(.A(\in[0] ), .Y(new_n91));
  OAI21X1  g01(.A0(\count[2] ), .A1(\count[1] ), .B0(\count[3] ), .Y(new_n92_1));
  NOR3X1   g02(.A(new_n92_1), .B(new_n91), .C(reset), .Y(n72));
  INVX1    g03(.A(\in[1] ), .Y(new_n94));
  NOR3X1   g04(.A(new_n92_1), .B(new_n94), .C(reset), .Y(n77));
  INVX1    g05(.A(\in[2] ), .Y(new_n96));
  NOR3X1   g06(.A(new_n92_1), .B(new_n96), .C(reset), .Y(n82));
  INVX1    g07(.A(\in[3] ), .Y(new_n98));
  NOR3X1   g08(.A(new_n92_1), .B(new_n98), .C(reset), .Y(n87));
  INVX1    g09(.A(\in[4] ), .Y(new_n100));
  NOR3X1   g10(.A(new_n92_1), .B(new_n100), .C(reset), .Y(n92));
  INVX1    g11(.A(\in[5] ), .Y(new_n102_1));
  NOR3X1   g12(.A(new_n92_1), .B(new_n102_1), .C(reset), .Y(n97));
  INVX1    g13(.A(\in[6] ), .Y(new_n104));
  NOR3X1   g14(.A(new_n92_1), .B(new_n104), .C(reset), .Y(n102));
  INVX1    g15(.A(\in[7] ), .Y(new_n106));
  NOR3X1   g16(.A(new_n92_1), .B(new_n106), .C(reset), .Y(n107));
  INVX1    g17(.A(\in[8] ), .Y(new_n108));
  NOR3X1   g18(.A(new_n92_1), .B(new_n108), .C(reset), .Y(n112));
  INVX1    g19(.A(\in[9] ), .Y(new_n110));
  NOR3X1   g20(.A(new_n92_1), .B(new_n110), .C(reset), .Y(n117));
  INVX1    g21(.A(\in[10] ), .Y(new_n112_1));
  NOR3X1   g22(.A(new_n92_1), .B(new_n112_1), .C(reset), .Y(n122));
  INVX1    g23(.A(\in[11] ), .Y(new_n114));
  NOR3X1   g24(.A(new_n92_1), .B(new_n114), .C(reset), .Y(n127));
  NOR2X1   g25(.A(new_n92_1), .B(reset), .Y(n132));
  NOR2X1   g26(.A(\count[0] ), .B(reset), .Y(n137));
  INVX1    g27(.A(reset), .Y(new_n118));
  XOR2X1   g28(.A(\count[1] ), .B(\count[0] ), .Y(new_n119));
  AND2X1   g29(.A(new_n119), .B(new_n118), .Y(n142));
  AND2X1   g30(.A(\count[1] ), .B(\count[0] ), .Y(new_n121));
  XOR2X1   g31(.A(new_n121), .B(\count[2] ), .Y(new_n122_1));
  AND2X1   g32(.A(new_n122_1), .B(new_n118), .Y(n147));
  NAND3X1  g33(.A(\count[2] ), .B(\count[1] ), .C(\count[0] ), .Y(new_n124));
  XOR2X1   g34(.A(new_n124), .B(\count[3] ), .Y(new_n125));
  NOR2X1   g35(.A(new_n125), .B(reset), .Y(n152));
  ZERO     g36(.Y(\out[0] ));
  ZERO     g37(.Y(\out[1] ));
  ZERO     g38(.Y(\out[2] ));
  ZERO     g39(.Y(\out[3] ));
  BUFX1    g40(.A(\shifted_out[4] ), .Y(\out[4] ));
  BUFX1    g41(.A(\shifted_out[5] ), .Y(\out[5] ));
  BUFX1    g42(.A(\shifted_out[6] ), .Y(\out[6] ));
  BUFX1    g43(.A(\shifted_out[7] ), .Y(\out[7] ));
  BUFX1    g44(.A(\shifted_out[8] ), .Y(\out[8] ));
  BUFX1    g45(.A(\shifted_out[9] ), .Y(\out[9] ));
  BUFX1    g46(.A(\shifted_out[10] ), .Y(\out[10] ));
  BUFX1    g47(.A(\shifted_out[11] ), .Y(\out[11] ));
  BUFX1    g48(.A(\shifted_out[12] ), .Y(\out[12] ));
  BUFX1    g49(.A(\shifted_out[13] ), .Y(\out[13] ));
  BUFX1    g50(.A(\shifted_out[14] ), .Y(\out[14] ));
  BUFX1    g51(.A(\shifted_out[15] ), .Y(\out[15] ));
  BUFX1    g52(.A(valid_reg), .Y(valid));
  always @ (posedge clock) begin
    \shifted_out[4]  <= n72;
    \shifted_out[5]  <= n77;
    \shifted_out[6]  <= n82;
    \shifted_out[7]  <= n87;
    \shifted_out[8]  <= n92;
    \shifted_out[9]  <= n97;
    \shifted_out[10]  <= n102;
    \shifted_out[11]  <= n107;
    \shifted_out[12]  <= n112;
    \shifted_out[13]  <= n117;
    \shifted_out[14]  <= n122;
    \shifted_out[15]  <= n127;
    valid_reg <= n132;
    \count[0]  <= n137;
    \count[1]  <= n142;
    \count[2]  <= n147;
    \count[3]  <= n152;
  end
endmodule


