// Benchmark "top_module" written by ABC on Wed Jun 26 15:22:23 2024

module top_module ( clock, 
    clk, Up, Down,
    \Q[0] , \Q[1] , \Q[2] , \Q[3]   );
  input  clock;
  input  clk, Up, Down;
  output \Q[0] , \Q[1] , \Q[2] , \Q[3] ;
  reg \Q[0] , \Q[1] , \Q[2] , \Q[3] , \top_module|lfsr_out[0] ,
    \top_module|lfsr_out[1] , \top_module|lfsr_out[2] ,
    \top_module|up_down_out[0] , \top_module|up_down_out[1] ,
    \top_module|up_down_out[2] , \top_module|up_down_out[3] ;
  wire new_n42, new_n43, new_n44, new_n47, new_n50_1, new_n52, new_n53_1,
    new_n54_1, new_n55, new_n56_1, new_n58, new_n59, new_n60, new_n61,
    new_n62, new_n64, new_n65, new_n66, new_n67, new_n68, n27, n30, n33,
    n36, n50, n53, n56, n70, n73, n76, n79;
  MX2X1    g00(.A(\top_module|up_down_out[0] ), .B(\top_module|lfsr_out[0] ), .S0(\top_module|lfsr_out[1] ), .Y(n27));
  INVX1    g01(.A(\top_module|up_down_out[0] ), .Y(new_n42));
  XOR2X1   g02(.A(new_n42), .B(\top_module|lfsr_out[0] ), .Y(new_n43));
  XOR2X1   g03(.A(new_n43), .B(\top_module|lfsr_out[1] ), .Y(new_n44));
  MX2X1    g04(.A(\top_module|up_down_out[1] ), .B(\top_module|lfsr_out[1] ), .S0(new_n44), .Y(n30));
  MX2X1    g05(.A(\top_module|up_down_out[2] ), .B(\top_module|lfsr_out[2] ), .S0(new_n44), .Y(n33));
  INVX1    g06(.A(\top_module|up_down_out[3] ), .Y(new_n47));
  NOR2X1   g07(.A(new_n44), .B(new_n47), .Y(n36));
  XOR2X1   g08(.A(\top_module|lfsr_out[1] ), .B(\top_module|lfsr_out[0] ), .Y(n56));
  XOR2X1   g09(.A(\top_module|up_down_out[0] ), .B(Down), .Y(new_n50_1));
  MX2X1    g10(.A(new_n50_1), .B(new_n42), .S0(Up), .Y(n70));
  INVX1    g11(.A(Up), .Y(new_n52));
  INVX1    g12(.A(Down), .Y(new_n53_1));
  XOR2X1   g13(.A(\top_module|up_down_out[1] ), .B(new_n42), .Y(new_n54_1));
  MX2X1    g14(.A(new_n54_1), .B(\top_module|up_down_out[1] ), .S0(new_n53_1), .Y(new_n55));
  XOR2X1   g15(.A(\top_module|up_down_out[1] ), .B(\top_module|up_down_out[0] ), .Y(new_n56_1));
  MX2X1    g16(.A(new_n56_1), .B(new_n55), .S0(new_n52), .Y(n73));
  NOR2X1   g17(.A(\top_module|up_down_out[1] ), .B(\top_module|up_down_out[0] ), .Y(new_n58));
  XOR2X1   g18(.A(new_n58), .B(\top_module|up_down_out[2] ), .Y(new_n59));
  MX2X1    g19(.A(new_n59), .B(\top_module|up_down_out[2] ), .S0(new_n53_1), .Y(new_n60));
  AND2X1   g20(.A(\top_module|up_down_out[1] ), .B(\top_module|up_down_out[0] ), .Y(new_n61));
  XOR2X1   g21(.A(new_n61), .B(\top_module|up_down_out[2] ), .Y(new_n62));
  MX2X1    g22(.A(new_n62), .B(new_n60), .S0(new_n52), .Y(n76));
  NOR3X1   g23(.A(\top_module|up_down_out[2] ), .B(\top_module|up_down_out[1] ), .C(\top_module|up_down_out[0] ), .Y(new_n64));
  XOR2X1   g24(.A(new_n64), .B(\top_module|up_down_out[3] ), .Y(new_n65));
  MX2X1    g25(.A(new_n65), .B(\top_module|up_down_out[3] ), .S0(new_n53_1), .Y(new_n66));
  NAND3X1  g26(.A(\top_module|up_down_out[2] ), .B(\top_module|up_down_out[1] ), .C(\top_module|up_down_out[0] ), .Y(new_n67));
  XOR2X1   g27(.A(new_n67), .B(new_n47), .Y(new_n68));
  MX2X1    g28(.A(new_n68), .B(new_n66), .S0(new_n52), .Y(n79));
  BUFX1    g29(.A(\top_module|lfsr_out[1] ), .Y(n50));
  BUFX1    g30(.A(\top_module|lfsr_out[2] ), .Y(n53));
  always @ (posedge clock) begin
    \Q[0]  <= n27;
    \Q[1]  <= n30;
    \Q[2]  <= n33;
    \Q[3]  <= n36;
    \top_module|lfsr_out[0]  <= n50;
    \top_module|lfsr_out[1]  <= n53;
    \top_module|lfsr_out[2]  <= n56;
    \top_module|up_down_out[0]  <= n70;
    \top_module|up_down_out[1]  <= n73;
    \top_module|up_down_out[2]  <= n76;
    \top_module|up_down_out[3]  <= n79;
  end
endmodule


