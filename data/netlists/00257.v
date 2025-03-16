// Benchmark "mux4to1" written by ABC on Wed Jun 26 15:22:04 2024

module mux4to1 ( 
    \inA[0] , \inA[1] , \inA[2] , \inA[3] , \inA[4] , \inA[5] , \inA[6] ,
    \inA[7] , \inB[0] , \inB[1] , \inB[2] , \inB[3] , \inB[4] , \inB[5] ,
    \inB[6] , \inB[7] , \inC[0] , \inC[1] , \inC[2] , \inC[3] , \inC[4] ,
    \inC[5] , \inC[6] , \inC[7] , \inD[0] , \inD[1] , \inD[2] , \inD[3] ,
    \inD[4] , \inD[5] , \inD[6] , \inD[7] , \select[0] , \select[1] ,
    \out[0] , \out[1] , \out[2] , \out[3] , \out[4] , \out[5] , \out[6] ,
    \out[7]   );
  input  \inA[0] , \inA[1] , \inA[2] , \inA[3] , \inA[4] , \inA[5] ,
    \inA[6] , \inA[7] , \inB[0] , \inB[1] , \inB[2] , \inB[3] , \inB[4] ,
    \inB[5] , \inB[6] , \inB[7] , \inC[0] , \inC[1] , \inC[2] , \inC[3] ,
    \inC[4] , \inC[5] , \inC[6] , \inC[7] , \inD[0] , \inD[1] , \inD[2] ,
    \inD[3] , \inD[4] , \inD[5] , \inD[6] , \inD[7] , \select[0] ,
    \select[1] ;
  output \out[0] , \out[1] , \out[2] , \out[3] , \out[4] , \out[5] , \out[6] ,
    \out[7] ;
  wire new_n43, new_n44, new_n45, new_n46, new_n47, new_n48, new_n49,
    new_n50, new_n52, new_n53, new_n55, new_n56, new_n58, new_n59, new_n61,
    new_n62, new_n64, new_n65, new_n67, new_n68, new_n70, new_n71;
  AND2X1   g00(.A(\select[1] ), .B(\select[0] ), .Y(new_n43));
  INVX1    g01(.A(\select[1] ), .Y(new_n44));
  NOR2X1   g02(.A(new_n44), .B(\select[0] ), .Y(new_n45));
  AOI22X1  g03(.A0(new_n45), .A1(\inC[0] ), .B0(new_n43), .B1(\inD[0] ), .Y(new_n46));
  AND2X1   g04(.A(new_n44), .B(\select[0] ), .Y(new_n47));
  NOR2X1   g05(.A(\select[1] ), .B(\select[0] ), .Y(new_n48));
  AOI22X1  g06(.A0(new_n48), .A1(\inA[0] ), .B0(new_n47), .B1(\inB[0] ), .Y(new_n49));
  NOR4X1   g07(.A(new_n48), .B(new_n47), .C(new_n45), .D(new_n43), .Y(new_n50));
  AOI21X1  g08(.A0(new_n49), .A1(new_n46), .B0(new_n50), .Y(\out[0] ));
  AOI22X1  g09(.A0(new_n45), .A1(\inC[1] ), .B0(new_n43), .B1(\inD[1] ), .Y(new_n52));
  AOI22X1  g10(.A0(new_n48), .A1(\inA[1] ), .B0(new_n47), .B1(\inB[1] ), .Y(new_n53));
  AOI21X1  g11(.A0(new_n53), .A1(new_n52), .B0(new_n50), .Y(\out[1] ));
  AOI22X1  g12(.A0(new_n45), .A1(\inC[2] ), .B0(new_n43), .B1(\inD[2] ), .Y(new_n55));
  AOI22X1  g13(.A0(new_n48), .A1(\inA[2] ), .B0(new_n47), .B1(\inB[2] ), .Y(new_n56));
  AOI21X1  g14(.A0(new_n56), .A1(new_n55), .B0(new_n50), .Y(\out[2] ));
  AOI22X1  g15(.A0(new_n45), .A1(\inC[3] ), .B0(new_n43), .B1(\inD[3] ), .Y(new_n58));
  AOI22X1  g16(.A0(new_n48), .A1(\inA[3] ), .B0(new_n47), .B1(\inB[3] ), .Y(new_n59));
  AOI21X1  g17(.A0(new_n59), .A1(new_n58), .B0(new_n50), .Y(\out[3] ));
  AOI22X1  g18(.A0(new_n45), .A1(\inC[4] ), .B0(new_n43), .B1(\inD[4] ), .Y(new_n61));
  AOI22X1  g19(.A0(new_n48), .A1(\inA[4] ), .B0(new_n47), .B1(\inB[4] ), .Y(new_n62));
  AOI21X1  g20(.A0(new_n62), .A1(new_n61), .B0(new_n50), .Y(\out[4] ));
  AOI22X1  g21(.A0(new_n45), .A1(\inC[5] ), .B0(new_n43), .B1(\inD[5] ), .Y(new_n64));
  AOI22X1  g22(.A0(new_n48), .A1(\inA[5] ), .B0(new_n47), .B1(\inB[5] ), .Y(new_n65));
  AOI21X1  g23(.A0(new_n65), .A1(new_n64), .B0(new_n50), .Y(\out[5] ));
  AOI22X1  g24(.A0(new_n45), .A1(\inC[6] ), .B0(new_n43), .B1(\inD[6] ), .Y(new_n67));
  AOI22X1  g25(.A0(new_n48), .A1(\inA[6] ), .B0(new_n47), .B1(\inB[6] ), .Y(new_n68));
  AOI21X1  g26(.A0(new_n68), .A1(new_n67), .B0(new_n50), .Y(\out[6] ));
  AOI22X1  g27(.A0(new_n45), .A1(\inC[7] ), .B0(new_n43), .B1(\inD[7] ), .Y(new_n70));
  AOI22X1  g28(.A0(new_n48), .A1(\inA[7] ), .B0(new_n47), .B1(\inB[7] ), .Y(new_n71));
  AOI21X1  g29(.A0(new_n71), .A1(new_n70), .B0(new_n50), .Y(\out[7] ));
endmodule


