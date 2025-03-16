// Benchmark "digital_system" written by ABC on Wed Jun 26 15:21:59 2024

module digital_system ( 
    a, b, c, d,
    out  );
  input  a, b, c, d;
  output out;
  wire new_n6, new_n7, new_n8, new_n9, new_n10, new_n11, new_n12, new_n13,
    new_n14, new_n15, new_n16, new_n17, new_n19, new_n20, new_n23, new_n24,
    new_n25, new_n26, new_n27, new_n28, new_n29, new_n30, new_n31, new_n32,
    new_n33, new_n34, new_n35, new_n36, new_n37, new_n38, new_n39, new_n40,
    new_n41, new_n42, new_n43, new_n44, new_n45, new_n46, new_n47, new_n48,
    new_n49, new_n50, new_n51, new_n52, new_n53, new_n54, new_n55, new_n56,
    new_n57, new_n58, new_n59, new_n60, new_n61, new_n62, new_n63, new_n64,
    new_n65, new_n67, new_n68, new_n69, new_n70, new_n71, new_n72, new_n73,
    new_n74, new_n75, new_n76, new_n77, new_n78, new_n79, new_n80, new_n81,
    new_n82, new_n83, new_n84, new_n85, new_n86, new_n87, new_n88, new_n89,
    new_n91, new_n92, new_n93, new_n94, new_n95, new_n96, new_n97, new_n98,
    new_n99, new_n100, new_n101, new_n102, new_n103, new_n104, new_n105,
    new_n106, new_n107, new_n108, new_n109, new_n110;
  NAND2X1  g000(.A(b), .B(a), .Y(new_n6));
  XOR2X1   g001(.A(b), .B(a), .Y(new_n7));
  NAND2X1  g002(.A(new_n7), .B(c), .Y(new_n8));
  NAND4X1  g003(.A(d), .B(c), .C(b), .D(a), .Y(new_n9));
  NOR3X1   g004(.A(new_n9), .B(new_n8), .C(new_n6), .Y(new_n10));
  INVX1    g005(.A(a), .Y(new_n11));
  INVX1    g006(.A(b), .Y(new_n12));
  INVX1    g007(.A(c), .Y(new_n13));
  INVX1    g008(.A(d), .Y(new_n14));
  NOR4X1   g009(.A(new_n14), .B(new_n13), .C(new_n12), .D(new_n11), .Y(new_n15));
  AND2X1   g010(.A(new_n15), .B(new_n10), .Y(new_n16));
  XOR2X1   g011(.A(new_n7), .B(new_n13), .Y(new_n17));
  XOR2X1   g012(.A(new_n8), .B(new_n6), .Y(new_n19));
  NOR2X1   g013(.A(new_n17), .B(new_n14), .Y(new_n20));
  NAND2X1  g014(.A(new_n15), .B(new_n10), .Y(new_n23));
  NOR4X1   g015(.A(new_n17), .B(new_n8), .C(new_n6), .D(new_n14), .Y(new_n24));
  OR4X1    g016(.A(new_n17), .B(new_n8), .C(new_n6), .D(new_n14), .Y(new_n25));
  OAI22X1  g017(.A0(new_n25), .A1(new_n24), .B0(new_n23), .B1(new_n16), .Y(new_n26));
  NOR2X1   g018(.A(new_n23), .B(new_n16), .Y(new_n27));
  INVX1    g019(.A(new_n24), .Y(new_n28));
  INVX1    g020(.A(new_n25), .Y(new_n29));
  AOI21X1  g021(.A0(new_n29), .A1(new_n28), .B0(new_n27), .Y(new_n30));
  INVX1    g022(.A(new_n30), .Y(new_n31));
  OAI22X1  g023(.A0(new_n25), .A1(new_n24), .B0(new_n23), .B1(new_n16), .Y(new_n32));
  XOR2X1   g024(.A(new_n17), .B(d), .Y(new_n33));
  XOR2X1   g025(.A(new_n20), .B(new_n19), .Y(new_n34));
  XOR2X1   g026(.A(new_n25), .B(new_n34), .Y(new_n35));
  NOR3X1   g027(.A(new_n9), .B(new_n8), .C(new_n6), .Y(new_n36));
  OR4X1    g028(.A(new_n17), .B(new_n8), .C(new_n6), .D(new_n14), .Y(new_n37));
  MX2X1    g029(.A(new_n37), .B(new_n36), .S0(new_n25), .Y(new_n38));
  NAND4X1  g030(.A(d), .B(c), .C(b), .D(a), .Y(new_n39));
  INVX1    g031(.A(new_n39), .Y(new_n40));
  OR4X1    g032(.A(new_n40), .B(new_n38), .C(new_n35), .D(new_n33), .Y(new_n41));
  NOR4X1   g033(.A(new_n41), .B(new_n32), .C(new_n31), .D(new_n26), .Y(new_n42));
  NAND4X1  g034(.A(d), .B(c), .C(b), .D(a), .Y(new_n43));
  AOI21X1  g035(.A0(new_n43), .A1(new_n41), .B0(new_n32), .Y(new_n44));
  OAI22X1  g036(.A0(new_n25), .A1(new_n24), .B0(new_n23), .B1(new_n16), .Y(new_n45));
  OAI21X1  g037(.A0(new_n45), .A1(new_n44), .B0(new_n30), .Y(new_n46));
  OR4X1    g038(.A(new_n17), .B(new_n8), .C(new_n6), .D(new_n14), .Y(new_n47));
  AOI21X1  g039(.A0(new_n29), .A1(new_n47), .B0(new_n27), .Y(new_n48));
  AOI21X1  g040(.A0(new_n48), .A1(new_n46), .B0(new_n26), .Y(new_n49));
  OAI22X1  g041(.A0(new_n25), .A1(new_n24), .B0(new_n23), .B1(new_n16), .Y(new_n50));
  OR2X1    g042(.A(new_n50), .B(new_n49), .Y(new_n51));
  OR2X1    g043(.A(new_n51), .B(new_n42), .Y(new_n52));
  OAI22X1  g044(.A0(new_n25), .A1(new_n24), .B0(new_n23), .B1(new_n16), .Y(new_n53));
  OAI22X1  g045(.A0(new_n25), .A1(new_n24), .B0(new_n23), .B1(new_n16), .Y(new_n54));
  OAI22X1  g046(.A0(new_n25), .A1(new_n24), .B0(new_n23), .B1(new_n16), .Y(new_n55));
  OAI22X1  g047(.A0(new_n25), .A1(new_n24), .B0(new_n23), .B1(new_n16), .Y(new_n56));
  OAI22X1  g048(.A0(new_n25), .A1(new_n24), .B0(new_n23), .B1(new_n16), .Y(new_n57));
  OAI22X1  g049(.A0(new_n25), .A1(new_n24), .B0(new_n23), .B1(new_n16), .Y(new_n58));
  AOI21X1  g050(.A0(new_n48), .A1(new_n46), .B0(new_n58), .Y(new_n59));
  OR2X1    g051(.A(new_n59), .B(new_n57), .Y(new_n60));
  NOR4X1   g052(.A(new_n60), .B(new_n56), .C(new_n55), .D(new_n54), .Y(new_n61));
  XOR2X1   g053(.A(new_n61), .B(new_n53), .Y(new_n62));
  AND2X1   g054(.A(new_n62), .B(new_n52), .Y(new_n63));
  NOR4X1   g055(.A(new_n60), .B(new_n56), .C(new_n55), .D(new_n54), .Y(new_n64));
  INVX1    g056(.A(new_n27), .Y(new_n65));
  OAI21X1  g057(.A0(new_n25), .A1(new_n24), .B0(new_n65), .Y(new_n67));
  OAI21X1  g058(.A0(new_n67), .A1(new_n64), .B0(new_n52), .Y(new_n68));
  NOR4X1   g059(.A(new_n60), .B(new_n56), .C(new_n55), .D(new_n54), .Y(new_n69));
  OAI21X1  g060(.A0(new_n25), .A1(new_n24), .B0(new_n65), .Y(new_n70));
  OAI21X1  g061(.A0(new_n70), .A1(new_n69), .B0(new_n52), .Y(new_n71));
  NOR4X1   g062(.A(new_n60), .B(new_n56), .C(new_n55), .D(new_n54), .Y(new_n72));
  OAI21X1  g063(.A0(new_n25), .A1(new_n24), .B0(new_n65), .Y(new_n73));
  OAI21X1  g064(.A0(new_n73), .A1(new_n72), .B0(new_n52), .Y(new_n74));
  NAND3X1  g065(.A(new_n74), .B(new_n71), .C(new_n68), .Y(new_n75));
  NOR3X1   g066(.A(new_n50), .B(new_n49), .C(new_n42), .Y(new_n76));
  INVX1    g067(.A(new_n33), .Y(new_n77));
  XOR2X1   g068(.A(new_n35), .B(new_n77), .Y(new_n78));
  MX2X1    g069(.A(new_n78), .B(new_n35), .S0(new_n76), .Y(new_n79));
  OR2X1    g070(.A(new_n35), .B(new_n33), .Y(new_n80));
  XOR2X1   g071(.A(new_n39), .B(new_n80), .Y(new_n81));
  MX2X1    g072(.A(new_n81), .B(new_n39), .S0(new_n76), .Y(new_n82));
  OAI22X1  g073(.A0(new_n25), .A1(new_n24), .B0(new_n23), .B1(new_n16), .Y(new_n83));
  NAND2X1  g074(.A(new_n48), .B(new_n46), .Y(new_n84));
  NOR4X1   g075(.A(new_n84), .B(new_n83), .C(new_n56), .D(new_n55), .Y(new_n85));
  XOR2X1   g076(.A(new_n85), .B(new_n54), .Y(new_n86));
  XOR2X1   g077(.A(new_n76), .B(new_n33), .Y(new_n87));
  AOI21X1  g078(.A0(new_n86), .A1(new_n52), .B0(new_n87), .Y(new_n88));
  NAND3X1  g079(.A(new_n88), .B(new_n82), .C(new_n79), .Y(new_n89));
  AOI21X1  g080(.A0(new_n29), .A1(new_n28), .B0(new_n27), .Y(new_n91));
  OAI21X1  g081(.A0(new_n25), .A1(new_n24), .B0(new_n65), .Y(new_n92));
  OAI21X1  g082(.A0(new_n25), .A1(new_n24), .B0(new_n65), .Y(new_n93));
  OR4X1    g083(.A(new_n84), .B(new_n83), .C(new_n56), .D(new_n55), .Y(new_n94));
  AOI21X1  g084(.A0(new_n29), .A1(new_n47), .B0(new_n27), .Y(new_n95));
  AOI21X1  g085(.A0(new_n95), .A1(new_n94), .B0(new_n76), .Y(new_n96));
  OAI21X1  g086(.A0(new_n25), .A1(new_n24), .B0(new_n65), .Y(new_n97));
  NOR4X1   g087(.A(new_n97), .B(new_n96), .C(new_n93), .D(new_n92), .Y(new_n98));
  OAI21X1  g088(.A0(new_n25), .A1(new_n24), .B0(new_n65), .Y(new_n99));
  AND2X1   g089(.A(new_n39), .B(new_n80), .Y(new_n100));
  XOR2X1   g090(.A(new_n100), .B(new_n38), .Y(new_n101));
  MX2X1    g091(.A(new_n101), .B(new_n38), .S0(new_n76), .Y(new_n102));
  OR4X1    g092(.A(new_n17), .B(new_n8), .C(new_n6), .D(new_n14), .Y(new_n103));
  MX2X1    g093(.A(new_n103), .B(new_n27), .S0(new_n25), .Y(new_n104));
  AND2X1   g094(.A(new_n43), .B(new_n41), .Y(new_n105));
  XOR2X1   g095(.A(new_n105), .B(new_n104), .Y(new_n106));
  MX2X1    g096(.A(new_n106), .B(new_n104), .S0(new_n76), .Y(new_n107));
  OAI21X1  g097(.A0(new_n25), .A1(new_n24), .B0(new_n65), .Y(new_n108));
  NOR4X1   g098(.A(new_n108), .B(new_n107), .C(new_n102), .D(new_n99), .Y(new_n109));
  NAND3X1  g099(.A(new_n109), .B(new_n98), .C(new_n91), .Y(new_n110));
  NOR4X1   g100(.A(new_n110), .B(new_n89), .C(new_n75), .D(new_n63), .Y(out));
endmodule


