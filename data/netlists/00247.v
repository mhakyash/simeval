// Benchmark "shift_register" written by ABC on Wed Jun 26 15:22:04 2024

module shift_register ( clock, 
    clk, rst, shen, \din[0] , \din[1] , \din[2] , \din[3] , \din[4] ,
    \din[5] , \din[6] , \din[7] ,
    \dout[0] , \dout[1] , \dout[2] , \dout[3] , \dout[4] , \dout[5] ,
    \dout[6] , \dout[7]   );
  input  clock;
  input  clk, rst, shen, \din[0] , \din[1] , \din[2] , \din[3] ,
    \din[4] , \din[5] , \din[6] , \din[7] ;
  output \dout[0] , \dout[1] , \dout[2] , \dout[3] , \dout[4] , \dout[5] ,
    \dout[6] , \dout[7] ;
  reg \shift_reg[2] , \shift_reg[3] , \shift_reg[4] , \shift_reg[5] ,
    \shift_reg[6] , \shift_reg[7] , \dout[0] , \dout[1] , \dout[2] ,
    \dout[3] , \dout[4] , \dout[5] , \dout[6] , \dout[7] , \shift_reg[0] ,
    \shift_reg[1] ;
  wire new_n68, new_n69, new_n71, new_n73, new_n75, new_n77, new_n79,
    new_n81, new_n83, new_n85, new_n87, new_n89, new_n91, new_n93, new_n95,
    new_n97, new_n99, n40, n45, n50, n55, n60, n65, n70, n74, n78, n82,
    n86, n90, n94, n98, n102, n107;
  INVX1    g00(.A(rst), .Y(new_n68));
  MX2X1    g01(.A(\shift_reg[2] ), .B(\din[2] ), .S0(shen), .Y(new_n69));
  AND2X1   g02(.A(new_n69), .B(new_n68), .Y(n40));
  MX2X1    g03(.A(\shift_reg[3] ), .B(\din[3] ), .S0(shen), .Y(new_n71));
  AND2X1   g04(.A(new_n71), .B(new_n68), .Y(n45));
  MX2X1    g05(.A(\shift_reg[4] ), .B(\din[4] ), .S0(shen), .Y(new_n73));
  AND2X1   g06(.A(new_n73), .B(new_n68), .Y(n50));
  MX2X1    g07(.A(\shift_reg[5] ), .B(\din[5] ), .S0(shen), .Y(new_n75));
  AND2X1   g08(.A(new_n75), .B(new_n68), .Y(n55));
  MX2X1    g09(.A(\shift_reg[6] ), .B(\din[6] ), .S0(shen), .Y(new_n77));
  AND2X1   g10(.A(new_n77), .B(new_n68), .Y(n60));
  MX2X1    g11(.A(\shift_reg[7] ), .B(\din[7] ), .S0(shen), .Y(new_n79));
  AND2X1   g12(.A(new_n79), .B(new_n68), .Y(n65));
  MX2X1    g13(.A(\dout[0] ), .B(\shift_reg[0] ), .S0(shen), .Y(new_n81));
  AND2X1   g14(.A(new_n81), .B(new_n68), .Y(n70));
  MX2X1    g15(.A(\dout[1] ), .B(\shift_reg[1] ), .S0(shen), .Y(new_n83));
  AND2X1   g16(.A(new_n83), .B(new_n68), .Y(n74));
  MX2X1    g17(.A(\dout[2] ), .B(\shift_reg[2] ), .S0(shen), .Y(new_n85));
  AND2X1   g18(.A(new_n85), .B(new_n68), .Y(n78));
  MX2X1    g19(.A(\dout[3] ), .B(\shift_reg[3] ), .S0(shen), .Y(new_n87));
  AND2X1   g20(.A(new_n87), .B(new_n68), .Y(n82));
  MX2X1    g21(.A(\dout[4] ), .B(\shift_reg[4] ), .S0(shen), .Y(new_n89));
  AND2X1   g22(.A(new_n89), .B(new_n68), .Y(n86));
  MX2X1    g23(.A(\dout[5] ), .B(\shift_reg[5] ), .S0(shen), .Y(new_n91));
  AND2X1   g24(.A(new_n91), .B(new_n68), .Y(n90));
  MX2X1    g25(.A(\dout[6] ), .B(\shift_reg[6] ), .S0(shen), .Y(new_n93));
  AND2X1   g26(.A(new_n93), .B(new_n68), .Y(n94));
  MX2X1    g27(.A(\dout[7] ), .B(\shift_reg[7] ), .S0(shen), .Y(new_n95));
  AND2X1   g28(.A(new_n95), .B(new_n68), .Y(n98));
  MX2X1    g29(.A(\shift_reg[0] ), .B(\din[0] ), .S0(shen), .Y(new_n97));
  AND2X1   g30(.A(new_n97), .B(new_n68), .Y(n102));
  MX2X1    g31(.A(\shift_reg[1] ), .B(\din[1] ), .S0(shen), .Y(new_n99));
  AND2X1   g32(.A(new_n99), .B(new_n68), .Y(n107));
  always @ (posedge clock) begin
    \shift_reg[2]  <= n40;
    \shift_reg[3]  <= n45;
    \shift_reg[4]  <= n50;
    \shift_reg[5]  <= n55;
    \shift_reg[6]  <= n60;
    \shift_reg[7]  <= n65;
    \dout[0]  <= n70;
    \dout[1]  <= n74;
    \dout[2]  <= n78;
    \dout[3]  <= n82;
    \dout[4]  <= n86;
    \dout[5]  <= n90;
    \dout[6]  <= n94;
    \dout[7]  <= n98;
    \shift_reg[0]  <= n102;
    \shift_reg[1]  <= n107;
  end
endmodule


