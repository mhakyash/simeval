// Benchmark "multi_io_module" written by ABC on Wed Jun 26 15:22:24 2024

module multi_io_module ( clock, 
    clk, reset, \data_in[0] , \data_in[1] , \data_in[2] , \data_in[3] ,
    \data_in[4] , \data_in[5] , \data_in[6] , \data_in[7] , enable,
    \addr[0] , \addr[1] , \addr[2] , \addr[3] ,
    \data_out[0] , \data_out[1] , \data_out[2] , \data_out[3] ,
    \data_out[4] , \data_out[5] , \data_out[6] , \data_out[7] , valid,
    done, error  );
  input  clock;
  input  clk, reset, \data_in[0] , \data_in[1] , \data_in[2] ,
    \data_in[3] , \data_in[4] , \data_in[5] , \data_in[6] , \data_in[7] ,
    enable, \addr[0] , \addr[1] , \addr[2] , \addr[3] ;
  output \data_out[0] , \data_out[1] , \data_out[2] , \data_out[3] ,
    \data_out[4] , \data_out[5] , \data_out[6] , \data_out[7] , valid,
    done, error;
  reg \data_out[0] , \data_out[1] , \data_out[2] , \data_out[3] ,
    \data_out[4] , \data_out[5] , \data_out[6] , \data_out[7] , valid,
    done, error;
  wire new_n60, new_n61, new_n63, new_n65, new_n67, new_n69, new_n71,
    new_n73, new_n75, new_n77, new_n78_1, new_n79, new_n80, new_n81,
    new_n82_1, new_n84, new_n85, new_n86_1, new_n87, new_n88, new_n89,
    new_n91, new_n92, new_n93, n54, n58, n62, n66, n70, n74, n78, n82, n86,
    n90, n94;
  INVX1    g00(.A(reset), .Y(new_n60));
  MX2X1    g01(.A(\data_out[0] ), .B(\data_in[0] ), .S0(enable), .Y(new_n61));
  AND2X1   g02(.A(new_n61), .B(new_n60), .Y(n54));
  MX2X1    g03(.A(\data_out[1] ), .B(\data_in[1] ), .S0(enable), .Y(new_n63));
  AND2X1   g04(.A(new_n63), .B(new_n60), .Y(n58));
  MX2X1    g05(.A(\data_out[2] ), .B(\data_in[2] ), .S0(enable), .Y(new_n65));
  AND2X1   g06(.A(new_n65), .B(new_n60), .Y(n62));
  MX2X1    g07(.A(\data_out[3] ), .B(\data_in[3] ), .S0(enable), .Y(new_n67));
  AND2X1   g08(.A(new_n67), .B(new_n60), .Y(n66));
  MX2X1    g09(.A(\data_out[4] ), .B(\data_in[4] ), .S0(enable), .Y(new_n69));
  AND2X1   g10(.A(new_n69), .B(new_n60), .Y(n70));
  MX2X1    g11(.A(\data_out[5] ), .B(\data_in[5] ), .S0(enable), .Y(new_n71));
  AND2X1   g12(.A(new_n71), .B(new_n60), .Y(n74));
  MX2X1    g13(.A(\data_out[6] ), .B(\data_in[6] ), .S0(enable), .Y(new_n73));
  AND2X1   g14(.A(new_n73), .B(new_n60), .Y(n78));
  MX2X1    g15(.A(\data_out[7] ), .B(\data_in[7] ), .S0(enable), .Y(new_n75));
  AND2X1   g16(.A(new_n75), .B(new_n60), .Y(n82));
  INVX1    g17(.A(valid), .Y(new_n77));
  OR2X1    g18(.A(new_n77), .B(enable), .Y(new_n78_1));
  NOR4X1   g19(.A(\addr[3] ), .B(\addr[2] ), .C(\addr[1] ), .D(\addr[0] ), .Y(new_n79));
  INVX1    g20(.A(\addr[0] ), .Y(new_n80));
  NOR4X1   g21(.A(\addr[3] ), .B(\addr[2] ), .C(\addr[1] ), .D(new_n80), .Y(new_n81));
  OAI21X1  g22(.A0(new_n81), .A1(new_n79), .B0(enable), .Y(new_n82_1));
  AOI21X1  g23(.A0(new_n82_1), .A1(new_n78_1), .B0(reset), .Y(n86));
  INVX1    g24(.A(done), .Y(new_n84));
  OR2X1    g25(.A(new_n84), .B(enable), .Y(new_n85));
  INVX1    g26(.A(\addr[1] ), .Y(new_n86_1));
  NOR4X1   g27(.A(\addr[3] ), .B(\addr[2] ), .C(new_n86_1), .D(\addr[0] ), .Y(new_n87));
  NOR4X1   g28(.A(\addr[3] ), .B(\addr[2] ), .C(new_n86_1), .D(new_n80), .Y(new_n88));
  OAI21X1  g29(.A0(new_n88), .A1(new_n87), .B0(enable), .Y(new_n89));
  AOI21X1  g30(.A0(new_n89), .A1(new_n85), .B0(reset), .Y(n90));
  INVX1    g31(.A(error), .Y(new_n91));
  OR2X1    g32(.A(new_n91), .B(enable), .Y(new_n92));
  OAI21X1  g33(.A0(new_n88), .A1(new_n81), .B0(enable), .Y(new_n93));
  AOI21X1  g34(.A0(new_n93), .A1(new_n92), .B0(reset), .Y(n94));
  always @ (posedge clock) begin
    \data_out[0]  <= n54;
    \data_out[1]  <= n58;
    \data_out[2]  <= n62;
    \data_out[3]  <= n66;
    \data_out[4]  <= n70;
    \data_out[5]  <= n74;
    \data_out[6]  <= n78;
    \data_out[7]  <= n82;
    valid <= n86;
    done <= n90;
    error <= n94;
  end
endmodule


