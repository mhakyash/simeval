// Benchmark "register_adder" written by ABC on Wed Jun 26 15:22:12 2024

module register_adder ( clock, 
    clk, reset, \d1[0] , \d1[1] , \d1[2] , \d1[3] , \d1[4] , \d1[5] ,
    \d1[6] , \d1[7] , \d2[0] , \d2[1] , \d2[2] , \d2[3] , \d2[4] , \d2[5] ,
    \d2[6] , \d2[7] ,
    \q[0] , \q[1] , \q[2] , \q[3] , \q[4] , \q[5] , \q[6] , \q[7]   );
  input  clock;
  input  clk, reset, \d1[0] , \d1[1] , \d1[2] , \d1[3] , \d1[4] ,
    \d1[5] , \d1[6] , \d1[7] , \d2[0] , \d2[1] , \d2[2] , \d2[3] , \d2[4] ,
    \d2[5] , \d2[6] , \d2[7] ;
  output \q[0] , \q[1] , \q[2] , \q[3] , \q[4] , \q[5] , \q[6] , \q[7] ;
  reg \reg2[0] , \reg2[1] , \reg2[2] , \reg2[3] , \reg2[4] , \reg2[5] ,
    \reg2[6] , \reg2[7] , \reg1[0] , \reg1[1] , \reg1[2] , \reg1[3] ,
    \reg1[4] , \reg1[5] , \reg1[6] , \reg1[7] ;
  wire new_n76, new_n77, new_n79_1, new_n80, new_n81, new_n82, new_n84_1,
    new_n85, new_n86, new_n87, new_n89_1, new_n90, new_n91, new_n92,
    new_n93, new_n95, new_n96, new_n97, new_n98, new_n100, new_n101,
    new_n102, new_n103, new_n104_1, new_n105, new_n106, new_n108,
    new_n109_1, new_n110, new_n112, n54, n59, n64, n69, n74, n79, n84, n89,
    n94, n99, n104, n109, n114, n119, n124, n129;
  XOR2X1   g00(.A(\reg1[0] ), .B(\reg2[0] ), .Y(\q[0] ));
  XOR2X1   g01(.A(\reg1[1] ), .B(\reg2[1] ), .Y(new_n76));
  AND2X1   g02(.A(\reg1[0] ), .B(\reg2[0] ), .Y(new_n77));
  XOR2X1   g03(.A(new_n77), .B(new_n76), .Y(\q[1] ));
  XOR2X1   g04(.A(\reg1[2] ), .B(\reg2[2] ), .Y(new_n79_1));
  INVX1    g05(.A(new_n79_1), .Y(new_n80));
  AND2X1   g06(.A(\reg1[1] ), .B(\reg2[1] ), .Y(new_n81));
  AOI21X1  g07(.A0(new_n77), .A1(new_n76), .B0(new_n81), .Y(new_n82));
  XOR2X1   g08(.A(new_n82), .B(new_n80), .Y(\q[2] ));
  XOR2X1   g09(.A(\reg1[3] ), .B(\reg2[3] ), .Y(new_n84_1));
  AND2X1   g10(.A(\reg1[2] ), .B(\reg2[2] ), .Y(new_n85));
  INVX1    g11(.A(new_n85), .Y(new_n86));
  OAI21X1  g12(.A0(new_n82), .A1(new_n80), .B0(new_n86), .Y(new_n87));
  XOR2X1   g13(.A(new_n87), .B(new_n84_1), .Y(\q[3] ));
  XOR2X1   g14(.A(\reg1[4] ), .B(\reg2[4] ), .Y(new_n89_1));
  NAND2X1  g15(.A(new_n84_1), .B(new_n79_1), .Y(new_n90));
  AND2X1   g16(.A(\reg1[3] ), .B(\reg2[3] ), .Y(new_n91));
  AOI21X1  g17(.A0(new_n85), .A1(new_n84_1), .B0(new_n91), .Y(new_n92));
  OAI21X1  g18(.A0(new_n90), .A1(new_n82), .B0(new_n92), .Y(new_n93));
  XOR2X1   g19(.A(new_n93), .B(new_n89_1), .Y(\q[4] ));
  XOR2X1   g20(.A(\reg1[5] ), .B(\reg2[5] ), .Y(new_n95));
  INVX1    g21(.A(new_n95), .Y(new_n96));
  AND2X1   g22(.A(\reg1[4] ), .B(\reg2[4] ), .Y(new_n97));
  AOI21X1  g23(.A0(new_n93), .A1(new_n89_1), .B0(new_n97), .Y(new_n98));
  XOR2X1   g24(.A(new_n98), .B(new_n96), .Y(\q[5] ));
  INVX1    g25(.A(\reg2[6] ), .Y(new_n100));
  XOR2X1   g26(.A(\reg1[6] ), .B(new_n100), .Y(new_n101));
  AND2X1   g27(.A(new_n95), .B(new_n89_1), .Y(new_n102));
  AND2X1   g28(.A(\reg1[5] ), .B(\reg2[5] ), .Y(new_n103));
  AND2X1   g29(.A(new_n97), .B(new_n95), .Y(new_n104_1));
  OR2X1    g30(.A(new_n104_1), .B(new_n103), .Y(new_n105));
  AOI21X1  g31(.A0(new_n102), .A1(new_n93), .B0(new_n105), .Y(new_n106));
  XOR2X1   g32(.A(new_n106), .B(new_n101), .Y(\q[6] ));
  XOR2X1   g33(.A(\reg1[7] ), .B(\reg2[7] ), .Y(new_n108));
  NAND2X1  g34(.A(\reg1[6] ), .B(\reg2[6] ), .Y(new_n109_1));
  OAI21X1  g35(.A0(new_n106), .A1(new_n101), .B0(new_n109_1), .Y(new_n110));
  XOR2X1   g36(.A(new_n110), .B(new_n108), .Y(\q[7] ));
  INVX1    g37(.A(reset), .Y(new_n112));
  AND2X1   g38(.A(\d2[0] ), .B(new_n112), .Y(n54));
  AND2X1   g39(.A(\d2[1] ), .B(new_n112), .Y(n59));
  OR2X1    g40(.A(\d2[2] ), .B(reset), .Y(n64));
  AND2X1   g41(.A(\d2[3] ), .B(new_n112), .Y(n69));
  OR2X1    g42(.A(\d2[4] ), .B(reset), .Y(n74));
  OR2X1    g43(.A(\d2[5] ), .B(reset), .Y(n79));
  AND2X1   g44(.A(\d2[6] ), .B(new_n112), .Y(n84));
  AND2X1   g45(.A(\d2[7] ), .B(new_n112), .Y(n89));
  AND2X1   g46(.A(\d1[0] ), .B(new_n112), .Y(n94));
  AND2X1   g47(.A(\d1[1] ), .B(new_n112), .Y(n99));
  OR2X1    g48(.A(\d1[2] ), .B(reset), .Y(n104));
  AND2X1   g49(.A(\d1[3] ), .B(new_n112), .Y(n109));
  OR2X1    g50(.A(\d1[4] ), .B(reset), .Y(n114));
  OR2X1    g51(.A(\d1[5] ), .B(reset), .Y(n119));
  AND2X1   g52(.A(\d1[6] ), .B(new_n112), .Y(n124));
  AND2X1   g53(.A(\d1[7] ), .B(new_n112), .Y(n129));
  always @ (posedge clock) begin
    \reg2[0]  <= n54;
    \reg2[1]  <= n59;
    \reg2[2]  <= n64;
    \reg2[3]  <= n69;
    \reg2[4]  <= n74;
    \reg2[5]  <= n79;
    \reg2[6]  <= n84;
    \reg2[7]  <= n89;
    \reg1[0]  <= n94;
    \reg1[1]  <= n99;
    \reg1[2]  <= n104;
    \reg1[3]  <= n109;
    \reg1[4]  <= n114;
    \reg1[5]  <= n119;
    \reg1[6]  <= n124;
    \reg1[7]  <= n129;
  end
endmodule


