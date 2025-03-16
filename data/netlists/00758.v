// Benchmark "shift_register" written by ABC on Wed Jun 26 15:22:19 2024

module shift_register ( clock, 
    clk, load, clear, \data_in[0] , \data_in[1] , \data_in[2] ,
    \data_in[3] , \data_in[4] , \data_in[5] , \data_in[6] , \data_in[7] ,
    \data_out[0] , \data_out[1] , \data_out[2] , \data_out[3] ,
    \data_out[4] , \data_out[5] , \data_out[6] , \data_out[7]   );
  input  clock;
  input  clk, load, clear, \data_in[0] , \data_in[1] , \data_in[2] ,
    \data_in[3] , \data_in[4] , \data_in[5] , \data_in[6] , \data_in[7] ;
  output \data_out[0] , \data_out[1] , \data_out[2] , \data_out[3] ,
    \data_out[4] , \data_out[5] , \data_out[6] , \data_out[7] ;
  reg \data_out[0] , \data_out[1] , \data_out[2] , \data_out[3] ,
    \data_out[4] , \data_out[5] , \data_out[6] , \data_out[7] ;
  wire new_n44_1, new_n45, new_n47, new_n49, new_n51, new_n53, new_n55,
    new_n57, new_n59, n40, n44, n48, n52, n56, n60, n64, n68;
  INVX1    g00(.A(clear), .Y(new_n44_1));
  MX2X1    g01(.A(\data_out[7] ), .B(\data_in[0] ), .S0(load), .Y(new_n45));
  AND2X1   g02(.A(new_n45), .B(new_n44_1), .Y(n40));
  MX2X1    g03(.A(\data_out[0] ), .B(\data_in[1] ), .S0(load), .Y(new_n47));
  AND2X1   g04(.A(new_n47), .B(new_n44_1), .Y(n44));
  MX2X1    g05(.A(\data_out[1] ), .B(\data_in[2] ), .S0(load), .Y(new_n49));
  AND2X1   g06(.A(new_n49), .B(new_n44_1), .Y(n48));
  MX2X1    g07(.A(\data_out[2] ), .B(\data_in[3] ), .S0(load), .Y(new_n51));
  AND2X1   g08(.A(new_n51), .B(new_n44_1), .Y(n52));
  MX2X1    g09(.A(\data_out[3] ), .B(\data_in[4] ), .S0(load), .Y(new_n53));
  AND2X1   g10(.A(new_n53), .B(new_n44_1), .Y(n56));
  MX2X1    g11(.A(\data_out[4] ), .B(\data_in[5] ), .S0(load), .Y(new_n55));
  AND2X1   g12(.A(new_n55), .B(new_n44_1), .Y(n60));
  MX2X1    g13(.A(\data_out[5] ), .B(\data_in[6] ), .S0(load), .Y(new_n57));
  AND2X1   g14(.A(new_n57), .B(new_n44_1), .Y(n64));
  MX2X1    g15(.A(\data_out[6] ), .B(\data_in[7] ), .S0(load), .Y(new_n59));
  AND2X1   g16(.A(new_n59), .B(new_n44_1), .Y(n68));
  always @ (posedge clock) begin
    \data_out[0]  <= n40;
    \data_out[1]  <= n44;
    \data_out[2]  <= n48;
    \data_out[3]  <= n52;
    \data_out[4]  <= n56;
    \data_out[5]  <= n60;
    \data_out[6]  <= n64;
    \data_out[7]  <= n68;
  end
endmodule


