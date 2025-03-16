// Benchmark "adder" written by ABC on Wed Jun 26 15:22:16 2024

module adder ( clock, 
    clk, \a[0] , \a[1] , \b[0] , \b[1] , cin,
    \sum[0] , \sum[1] , cout  );
  input  clock;
  input  clk, \a[0] , \a[1] , \b[0] , \b[1] , cin;
  output \sum[0] , \sum[1] , cout;
  reg \temp_sum[0] , \temp_sum[1] , \temp_sum[2] , \temp_cout[0] ;
  wire new_n22, new_n24, new_n25_1, new_n26, new_n27, new_n29, new_n30_1,
    new_n31, new_n32, n20, n25, n30, n34;
  XOR2X1   g00(.A(\b[0] ), .B(\a[0] ), .Y(new_n22));
  XOR2X1   g01(.A(new_n22), .B(cin), .Y(n20));
  XOR2X1   g02(.A(\b[1] ), .B(\a[1] ), .Y(new_n24));
  NAND2X1  g03(.A(\b[0] ), .B(\a[0] ), .Y(new_n25_1));
  XOR2X1   g04(.A(new_n25_1), .B(new_n24), .Y(new_n26));
  NAND2X1  g05(.A(new_n22), .B(cin), .Y(new_n27));
  XOR2X1   g06(.A(new_n27), .B(new_n26), .Y(n25));
  NAND2X1  g07(.A(\b[1] ), .B(\a[1] ), .Y(new_n29));
  NAND3X1  g08(.A(new_n24), .B(\b[0] ), .C(\a[0] ), .Y(new_n30_1));
  NAND2X1  g09(.A(new_n30_1), .B(new_n29), .Y(new_n31));
  NOR2X1   g10(.A(new_n27), .B(new_n26), .Y(new_n32));
  XOR2X1   g11(.A(new_n32), .B(new_n31), .Y(n30));
  BUFX1    g12(.A(\temp_sum[0] ), .Y(\sum[0] ));
  BUFX1    g13(.A(\temp_sum[1] ), .Y(\sum[1] ));
  BUFX1    g14(.A(\temp_cout[0] ), .Y(cout));
  BUFX1    g15(.A(\temp_sum[2] ), .Y(n34));
  always @ (posedge clock) begin
    \temp_sum[0]  <= n20;
    \temp_sum[1]  <= n25;
    \temp_sum[2]  <= n30;
    \temp_cout[0]  <= n34;
  end
endmodule


