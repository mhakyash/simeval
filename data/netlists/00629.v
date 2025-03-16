// Benchmark "ShiftRegister" written by ABC on Wed Jun 26 15:22:16 2024

module ShiftRegister ( clock, 
    clk, rst, load, shift, \dataIn[0] , \dataIn[1] , \dataIn[2] ,
    \dataIn[3] , \dataIn[4] , \dataIn[5] , \dataIn[6] , \dataIn[7] ,
    \dataOut[0] , \dataOut[1] , \dataOut[2] , \dataOut[3] , \dataOut[4] ,
    \dataOut[5] , \dataOut[6] , \dataOut[7]   );
  input  clock;
  input  clk, rst, load, shift, \dataIn[0] , \dataIn[1] , \dataIn[2] ,
    \dataIn[3] , \dataIn[4] , \dataIn[5] , \dataIn[6] , \dataIn[7] ;
  output \dataOut[0] , \dataOut[1] , \dataOut[2] , \dataOut[3] , \dataOut[4] ,
    \dataOut[5] , \dataOut[6] , \dataOut[7] ;
  reg \register[0] , \register[1] , \register[2] , \register[3] ,
    \register[4] , \register[5] , \register[6] , \register[7] ;
  wire new_n45, new_n46, new_n47_1, new_n49, new_n50, new_n52_1, new_n53,
    new_n55, new_n56, new_n58, new_n59, new_n61, new_n62_1, new_n64,
    new_n65, new_n67_1, new_n68, n42, n47, n52, n57, n62, n67, n72, n77;
  INVX1    g00(.A(rst), .Y(new_n45));
  MX2X1    g01(.A(\register[0] ), .B(\register[7] ), .S0(shift), .Y(new_n46));
  MX2X1    g02(.A(new_n46), .B(\dataIn[0] ), .S0(load), .Y(new_n47_1));
  AND2X1   g03(.A(new_n47_1), .B(new_n45), .Y(n42));
  MX2X1    g04(.A(\register[1] ), .B(\register[0] ), .S0(shift), .Y(new_n49));
  MX2X1    g05(.A(new_n49), .B(\dataIn[1] ), .S0(load), .Y(new_n50));
  AND2X1   g06(.A(new_n50), .B(new_n45), .Y(n47));
  MX2X1    g07(.A(\register[2] ), .B(\register[1] ), .S0(shift), .Y(new_n52_1));
  MX2X1    g08(.A(new_n52_1), .B(\dataIn[2] ), .S0(load), .Y(new_n53));
  AND2X1   g09(.A(new_n53), .B(new_n45), .Y(n52));
  MX2X1    g10(.A(\register[3] ), .B(\register[2] ), .S0(shift), .Y(new_n55));
  MX2X1    g11(.A(new_n55), .B(\dataIn[3] ), .S0(load), .Y(new_n56));
  AND2X1   g12(.A(new_n56), .B(new_n45), .Y(n57));
  MX2X1    g13(.A(\register[4] ), .B(\register[3] ), .S0(shift), .Y(new_n58));
  MX2X1    g14(.A(new_n58), .B(\dataIn[4] ), .S0(load), .Y(new_n59));
  AND2X1   g15(.A(new_n59), .B(new_n45), .Y(n62));
  MX2X1    g16(.A(\register[5] ), .B(\register[4] ), .S0(shift), .Y(new_n61));
  MX2X1    g17(.A(new_n61), .B(\dataIn[5] ), .S0(load), .Y(new_n62_1));
  AND2X1   g18(.A(new_n62_1), .B(new_n45), .Y(n67));
  MX2X1    g19(.A(\register[6] ), .B(\register[5] ), .S0(shift), .Y(new_n64));
  MX2X1    g20(.A(new_n64), .B(\dataIn[6] ), .S0(load), .Y(new_n65));
  AND2X1   g21(.A(new_n65), .B(new_n45), .Y(n72));
  MX2X1    g22(.A(\register[7] ), .B(\register[6] ), .S0(shift), .Y(new_n67_1));
  MX2X1    g23(.A(new_n67_1), .B(\dataIn[7] ), .S0(load), .Y(new_n68));
  AND2X1   g24(.A(new_n68), .B(new_n45), .Y(n77));
  BUFX1    g25(.A(\register[0] ), .Y(\dataOut[0] ));
  BUFX1    g26(.A(\register[1] ), .Y(\dataOut[1] ));
  BUFX1    g27(.A(\register[2] ), .Y(\dataOut[2] ));
  BUFX1    g28(.A(\register[3] ), .Y(\dataOut[3] ));
  BUFX1    g29(.A(\register[4] ), .Y(\dataOut[4] ));
  BUFX1    g30(.A(\register[5] ), .Y(\dataOut[5] ));
  BUFX1    g31(.A(\register[6] ), .Y(\dataOut[6] ));
  BUFX1    g32(.A(\register[7] ), .Y(\dataOut[7] ));
  always @ (posedge clock) begin
    \register[0]  <= n42;
    \register[1]  <= n47;
    \register[2]  <= n52;
    \register[3]  <= n57;
    \register[4]  <= n62;
    \register[5]  <= n67;
    \register[6]  <= n72;
    \register[7]  <= n77;
  end
endmodule


