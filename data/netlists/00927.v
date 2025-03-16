// Benchmark "round_saturation" written by ABC on Wed Jun 26 15:22:24 2024

module round_saturation ( 
    \in[0] , \in[1] , \in[2] , \in[3] , \in[4] , \in[5] , \in[6] , \in[7] ,
    \in[8] , \in[9] , \in[10] , \in[11] ,
    \out[0] , \out[1] , \out[2] , \out[3] , \out[4] , \out[5] , \out[6] ,
    \out[7] , \out[8] , \out[9] , \out[10] , \out[11]   );
  input  \in[0] , \in[1] , \in[2] , \in[3] , \in[4] , \in[5] , \in[6] ,
    \in[7] , \in[8] , \in[9] , \in[10] , \in[11] ;
  output \out[0] , \out[1] , \out[2] , \out[3] , \out[4] , \out[5] , \out[6] ,
    \out[7] , \out[8] , \out[9] , \out[10] , \out[11] ;
  wire new_n25, new_n26, new_n27, new_n28, new_n29, new_n30, new_n31,
    new_n32, new_n33, new_n34, new_n35, new_n36, new_n37, new_n38, new_n39,
    new_n40, new_n41, new_n42, new_n43, new_n44, new_n45, new_n46, new_n47,
    new_n48, new_n49, new_n50, new_n51, new_n52, new_n53, new_n54, new_n55,
    new_n56, new_n57, new_n58, new_n59, new_n60, new_n61, new_n62, new_n63,
    new_n64, new_n65, new_n66, new_n67, new_n68, new_n69, new_n70, new_n71,
    new_n72, new_n73, new_n74, new_n75, new_n76, new_n77, new_n78, new_n79,
    new_n80, new_n81, new_n82, new_n83, new_n84, new_n85, new_n86, new_n87,
    new_n88, new_n89, new_n90, new_n91, new_n92, new_n93, new_n94, new_n95,
    new_n96, new_n97, new_n98, new_n99, new_n100, new_n101, new_n102,
    new_n103, new_n104, new_n105, new_n106, new_n107, new_n108, new_n109,
    new_n110, new_n111, new_n112, new_n113, new_n114;
  INVX1    g000(.A(\in[0] ), .Y(new_n25));
  OR4X1    g001(.A(\in[11] ), .B(\in[10] ), .C(\in[9] ), .D(\in[8] ), .Y(new_n26));
  OR4X1    g002(.A(\in[7] ), .B(\in[6] ), .C(\in[5] ), .D(\in[4] ), .Y(new_n27));
  OR2X1    g003(.A(\in[1] ), .B(\in[0] ), .Y(new_n28));
  OR4X1    g004(.A(new_n28), .B(new_n27), .C(\in[3] ), .D(\in[2] ), .Y(new_n29));
  NOR4X1   g005(.A(\in[11] ), .B(\in[10] ), .C(\in[9] ), .D(\in[8] ), .Y(new_n30));
  NOR4X1   g006(.A(new_n28), .B(new_n27), .C(\in[3] ), .D(\in[2] ), .Y(new_n31));
  NOR4X1   g007(.A(\in[3] ), .B(\in[2] ), .C(\in[1] ), .D(\in[0] ), .Y(new_n32));
  NOR4X1   g008(.A(\in[7] ), .B(\in[6] ), .C(\in[5] ), .D(\in[4] ), .Y(new_n33));
  OAI21X1  g009(.A0(new_n32), .A1(new_n27), .B0(new_n33), .Y(new_n34));
  OAI21X1  g010(.A0(new_n34), .A1(new_n31), .B0(new_n30), .Y(new_n35));
  NOR4X1   g011(.A(\in[11] ), .B(\in[10] ), .C(\in[9] ), .D(\in[8] ), .Y(new_n36));
  INVX1    g012(.A(new_n36), .Y(new_n37));
  OR4X1    g013(.A(\in[11] ), .B(\in[10] ), .C(\in[9] ), .D(\in[8] ), .Y(new_n38));
  NOR4X1   g014(.A(\in[7] ), .B(\in[6] ), .C(\in[5] ), .D(\in[4] ), .Y(new_n39));
  OR4X1    g015(.A(\in[3] ), .B(\in[2] ), .C(\in[1] ), .D(\in[0] ), .Y(new_n40));
  OR4X1    g016(.A(\in[7] ), .B(\in[6] ), .C(\in[5] ), .D(\in[4] ), .Y(new_n41));
  AOI21X1  g017(.A0(new_n40), .A1(new_n39), .B0(new_n41), .Y(new_n42));
  AOI21X1  g018(.A0(new_n42), .A1(new_n29), .B0(new_n38), .Y(new_n43));
  NOR4X1   g019(.A(new_n43), .B(new_n37), .C(new_n35), .D(\in[11] ), .Y(new_n44));
  AOI21X1  g020(.A0(new_n42), .A1(new_n29), .B0(new_n26), .Y(new_n45));
  NOR4X1   g021(.A(\in[11] ), .B(\in[10] ), .C(\in[9] ), .D(\in[8] ), .Y(new_n46));
  OAI21X1  g022(.A0(new_n34), .A1(new_n31), .B0(new_n46), .Y(new_n47));
  NOR4X1   g023(.A(new_n47), .B(new_n37), .C(new_n45), .D(\in[11] ), .Y(new_n48));
  AOI21X1  g024(.A0(new_n47), .A1(new_n36), .B0(\in[11] ), .Y(new_n49));
  NOR3X1   g025(.A(new_n49), .B(new_n48), .C(new_n44), .Y(new_n50));
  NOR3X1   g026(.A(new_n29), .B(new_n38), .C(\in[11] ), .Y(new_n51));
  OAI22X1  g027(.A0(new_n51), .A1(new_n50), .B0(new_n29), .B1(new_n26), .Y(new_n52));
  XOR2X1   g028(.A(new_n52), .B(new_n25), .Y(new_n53));
  INVX1    g029(.A(new_n52), .Y(new_n54));
  AOI21X1  g030(.A0(new_n34), .A1(new_n46), .B0(new_n37), .Y(new_n55));
  AOI21X1  g031(.A0(new_n55), .A1(new_n54), .B0(\in[11] ), .Y(new_n56));
  OR2X1    g032(.A(new_n40), .B(\in[4] ), .Y(new_n57));
  XOR2X1   g033(.A(new_n57), .B(\in[5] ), .Y(new_n58));
  INVX1    g034(.A(new_n58), .Y(new_n59));
  MX2X1    g035(.A(new_n59), .B(\in[5] ), .S0(new_n52), .Y(new_n60));
  XOR2X1   g036(.A(new_n40), .B(\in[4] ), .Y(new_n61));
  INVX1    g037(.A(new_n61), .Y(new_n62));
  MX2X1    g038(.A(new_n62), .B(\in[4] ), .S0(new_n52), .Y(new_n63));
  INVX1    g039(.A(\in[6] ), .Y(new_n64));
  NOR3X1   g040(.A(new_n40), .B(\in[5] ), .C(\in[4] ), .Y(new_n65));
  XOR2X1   g041(.A(new_n65), .B(new_n64), .Y(new_n66));
  INVX1    g042(.A(new_n66), .Y(new_n67));
  MX2X1    g043(.A(new_n67), .B(\in[6] ), .S0(new_n52), .Y(new_n68));
  OR4X1    g044(.A(new_n40), .B(\in[6] ), .C(\in[5] ), .D(\in[4] ), .Y(new_n69));
  XOR2X1   g045(.A(new_n69), .B(\in[7] ), .Y(new_n70));
  INVX1    g046(.A(new_n70), .Y(new_n71));
  MX2X1    g047(.A(new_n71), .B(\in[7] ), .S0(new_n52), .Y(new_n72));
  NAND4X1  g048(.A(new_n72), .B(new_n68), .C(new_n63), .D(new_n60), .Y(new_n73));
  INVX1    g049(.A(\in[11] ), .Y(new_n74));
  NOR4X1   g050(.A(new_n34), .B(\in[10] ), .C(\in[9] ), .D(\in[8] ), .Y(new_n75));
  XOR2X1   g051(.A(new_n75), .B(new_n74), .Y(new_n76));
  MX2X1    g052(.A(new_n76), .B(new_n74), .S0(new_n52), .Y(new_n77));
  INVX1    g053(.A(\in[8] ), .Y(new_n78));
  NAND2X1  g054(.A(new_n42), .B(new_n78), .Y(new_n79));
  XOR2X1   g055(.A(new_n79), .B(\in[9] ), .Y(new_n80));
  INVX1    g056(.A(new_n80), .Y(new_n81));
  MX2X1    g057(.A(new_n81), .B(\in[9] ), .S0(new_n52), .Y(new_n82));
  XOR2X1   g058(.A(new_n42), .B(new_n78), .Y(new_n83));
  INVX1    g059(.A(new_n83), .Y(new_n84));
  MX2X1    g060(.A(new_n84), .B(\in[8] ), .S0(new_n52), .Y(new_n85));
  INVX1    g061(.A(\in[10] ), .Y(new_n86));
  NOR3X1   g062(.A(new_n34), .B(\in[9] ), .C(\in[8] ), .Y(new_n87));
  XOR2X1   g063(.A(new_n87), .B(new_n86), .Y(new_n88));
  INVX1    g064(.A(new_n88), .Y(new_n89));
  MX2X1    g065(.A(new_n89), .B(\in[10] ), .S0(new_n52), .Y(new_n90));
  NAND4X1  g066(.A(new_n90), .B(new_n85), .C(new_n82), .D(new_n77), .Y(new_n91));
  OR4X1    g067(.A(\in[11] ), .B(\in[10] ), .C(\in[9] ), .D(\in[8] ), .Y(new_n92));
  NOR4X1   g068(.A(\in[11] ), .B(\in[10] ), .C(\in[9] ), .D(\in[8] ), .Y(new_n93));
  OAI21X1  g069(.A0(new_n42), .A1(new_n92), .B0(new_n93), .Y(new_n94));
  OAI21X1  g070(.A0(new_n94), .A1(new_n52), .B0(new_n74), .Y(new_n95));
  OR2X1    g071(.A(\in[1] ), .B(\in[0] ), .Y(new_n96));
  XOR2X1   g072(.A(new_n96), .B(\in[2] ), .Y(new_n97));
  INVX1    g073(.A(new_n97), .Y(new_n98));
  MX2X1    g074(.A(new_n98), .B(\in[2] ), .S0(new_n52), .Y(new_n99));
  OR2X1    g075(.A(new_n96), .B(\in[2] ), .Y(new_n100));
  XOR2X1   g076(.A(new_n100), .B(\in[3] ), .Y(new_n101));
  INVX1    g077(.A(new_n101), .Y(new_n102));
  MX2X1    g078(.A(new_n102), .B(\in[3] ), .S0(new_n52), .Y(new_n103));
  XOR2X1   g079(.A(\in[1] ), .B(\in[0] ), .Y(new_n104));
  INVX1    g080(.A(new_n104), .Y(new_n105));
  MX2X1    g081(.A(new_n105), .B(\in[1] ), .S0(new_n52), .Y(new_n106));
  NAND4X1  g082(.A(new_n106), .B(new_n53), .C(new_n103), .D(new_n99), .Y(new_n107));
  NOR4X1   g083(.A(new_n107), .B(new_n95), .C(new_n91), .D(new_n73), .Y(new_n108));
  NOR2X1   g084(.A(new_n95), .B(new_n77), .Y(new_n109));
  OAI21X1  g085(.A0(new_n94), .A1(new_n52), .B0(new_n74), .Y(new_n110));
  OR2X1    g086(.A(new_n110), .B(new_n109), .Y(new_n111));
  OAI21X1  g087(.A0(new_n111), .A1(new_n108), .B0(new_n56), .Y(new_n112));
  AOI21X1  g088(.A0(new_n55), .A1(new_n54), .B0(\in[11] ), .Y(new_n113));
  AOI22X1  g089(.A0(new_n113), .A1(new_n112), .B0(new_n108), .B1(new_n56), .Y(new_n114));
  OR2X1    g090(.A(new_n114), .B(new_n53), .Y(\out[0] ));
  OR2X1    g091(.A(new_n114), .B(new_n106), .Y(\out[1] ));
  OR2X1    g092(.A(new_n114), .B(new_n99), .Y(\out[2] ));
  OR2X1    g093(.A(new_n114), .B(new_n103), .Y(\out[3] ));
  OR2X1    g094(.A(new_n114), .B(new_n63), .Y(\out[4] ));
  OR2X1    g095(.A(new_n114), .B(new_n60), .Y(\out[5] ));
  OR2X1    g096(.A(new_n114), .B(new_n68), .Y(\out[6] ));
  OR2X1    g097(.A(new_n114), .B(new_n72), .Y(\out[7] ));
  OR2X1    g098(.A(new_n114), .B(new_n85), .Y(\out[8] ));
  OR2X1    g099(.A(new_n114), .B(new_n82), .Y(\out[9] ));
  OR2X1    g100(.A(new_n114), .B(new_n90), .Y(\out[10] ));
  NOR2X1   g101(.A(new_n114), .B(new_n77), .Y(\out[11] ));
endmodule


