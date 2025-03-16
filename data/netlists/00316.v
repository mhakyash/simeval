// Benchmark "add_sub" written by ABC on Wed Jun 26 15:22:06 2024

module add_sub ( 
    \a[0] , \a[1] , \a[2] , \a[3] , \b[0] , \b[1] , \b[2] , \b[3] , cin,
    control,
    \result[0] , \result[1] , \result[2] , \result[3] , overflow  );
  input  \a[0] , \a[1] , \a[2] , \a[3] , \b[0] , \b[1] , \b[2] , \b[3] ,
    cin, control;
  output \result[0] , \result[1] , \result[2] , \result[3] , overflow;
  wire new_n16, new_n17, new_n18, new_n19, new_n20, new_n21, new_n22,
    new_n24, new_n25, new_n26, new_n27, new_n28, new_n29, new_n30, new_n31,
    new_n32, new_n33, new_n34, new_n36, new_n37, new_n38, new_n39, new_n40,
    new_n41, new_n42, new_n43, new_n44, new_n45, new_n46, new_n47, new_n48,
    new_n49, new_n51, new_n52, new_n53, new_n54, new_n55, new_n56, new_n57,
    new_n58, new_n59, new_n60, new_n61, new_n62, new_n63, new_n64, new_n66,
    new_n67, new_n68, new_n69, new_n70, new_n71, new_n72, new_n73, new_n74,
    new_n75, new_n76, new_n77, new_n78, new_n79, new_n80, new_n81, new_n82,
    new_n83, new_n84, new_n85, new_n86, new_n87, new_n88, new_n89, new_n90,
    new_n91, new_n92, new_n93, new_n94, new_n95, new_n96, new_n97, new_n98,
    new_n99, new_n100, new_n101, new_n102, new_n103, new_n104, new_n105,
    new_n106, new_n107, new_n108, new_n109, new_n110;
  INVX1    g00(.A(control), .Y(new_n16));
  XOR2X1   g01(.A(\b[0] ), .B(\a[0] ), .Y(new_n17));
  XOR2X1   g02(.A(new_n17), .B(cin), .Y(new_n18));
  INVX1    g03(.A(cin), .Y(new_n19));
  XOR2X1   g04(.A(\b[0] ), .B(\a[0] ), .Y(new_n20));
  XOR2X1   g05(.A(new_n20), .B(new_n19), .Y(new_n21));
  INVX1    g06(.A(new_n21), .Y(new_n22));
  MX2X1    g07(.A(new_n22), .B(new_n18), .S0(new_n16), .Y(\result[0] ));
  XOR2X1   g08(.A(\b[1] ), .B(\a[1] ), .Y(new_n24));
  INVX1    g09(.A(\a[0] ), .Y(new_n25));
  AND2X1   g10(.A(\b[0] ), .B(new_n25), .Y(new_n26));
  XOR2X1   g11(.A(new_n26), .B(new_n24), .Y(new_n27));
  NOR2X1   g12(.A(new_n17), .B(new_n19), .Y(new_n28));
  XOR2X1   g13(.A(new_n28), .B(new_n27), .Y(new_n29));
  AND2X1   g14(.A(\b[0] ), .B(\a[0] ), .Y(new_n30));
  XOR2X1   g15(.A(\b[1] ), .B(\a[1] ), .Y(new_n31));
  XOR2X1   g16(.A(new_n31), .B(new_n30), .Y(new_n32));
  AND2X1   g17(.A(new_n20), .B(cin), .Y(new_n33));
  XOR2X1   g18(.A(new_n33), .B(new_n32), .Y(new_n34));
  MX2X1    g19(.A(new_n34), .B(new_n29), .S0(new_n16), .Y(\result[1] ));
  INVX1    g20(.A(\a[2] ), .Y(new_n36));
  XOR2X1   g21(.A(\b[2] ), .B(new_n36), .Y(new_n37));
  INVX1    g22(.A(\a[1] ), .Y(new_n38));
  OR2X1    g23(.A(\b[1] ), .B(new_n38), .Y(new_n39));
  OAI21X1  g24(.A0(new_n26), .A1(new_n24), .B0(new_n39), .Y(new_n40));
  XOR2X1   g25(.A(new_n40), .B(new_n37), .Y(new_n41));
  NOR3X1   g26(.A(new_n27), .B(new_n17), .C(new_n19), .Y(new_n42));
  XOR2X1   g27(.A(new_n42), .B(new_n41), .Y(new_n43));
  XOR2X1   g28(.A(\b[2] ), .B(new_n36), .Y(new_n44));
  AND2X1   g29(.A(\b[1] ), .B(\a[1] ), .Y(new_n45));
  AOI21X1  g30(.A0(new_n31), .A1(new_n30), .B0(new_n45), .Y(new_n46));
  XOR2X1   g31(.A(new_n46), .B(new_n44), .Y(new_n47));
  AND2X1   g32(.A(new_n33), .B(new_n32), .Y(new_n48));
  XOR2X1   g33(.A(new_n48), .B(new_n47), .Y(new_n49));
  MX2X1    g34(.A(new_n49), .B(new_n43), .S0(new_n16), .Y(\result[2] ));
  XOR2X1   g35(.A(\b[3] ), .B(\a[3] ), .Y(new_n51));
  INVX1    g36(.A(\b[2] ), .Y(new_n52));
  AND2X1   g37(.A(new_n52), .B(\a[2] ), .Y(new_n53));
  AOI21X1  g38(.A0(new_n40), .A1(new_n37), .B0(new_n53), .Y(new_n54));
  XOR2X1   g39(.A(new_n54), .B(new_n51), .Y(new_n55));
  NOR4X1   g40(.A(new_n41), .B(new_n27), .C(new_n17), .D(new_n19), .Y(new_n56));
  XOR2X1   g41(.A(new_n56), .B(new_n55), .Y(new_n57));
  INVX1    g42(.A(\a[3] ), .Y(new_n58));
  XOR2X1   g43(.A(\b[3] ), .B(new_n58), .Y(new_n59));
  NAND2X1  g44(.A(\b[2] ), .B(\a[2] ), .Y(new_n60));
  OAI21X1  g45(.A0(new_n46), .A1(new_n44), .B0(new_n60), .Y(new_n61));
  XOR2X1   g46(.A(new_n61), .B(new_n59), .Y(new_n62));
  NAND2X1  g47(.A(new_n48), .B(new_n47), .Y(new_n63));
  XOR2X1   g48(.A(new_n63), .B(new_n62), .Y(new_n64));
  MX2X1    g49(.A(new_n64), .B(new_n57), .S0(new_n16), .Y(\result[3] ));
  INVX1    g50(.A(\b[1] ), .Y(new_n66));
  AND2X1   g51(.A(cin), .B(\b[0] ), .Y(new_n67));
  XOR2X1   g52(.A(new_n67), .B(new_n66), .Y(new_n68));
  NAND2X1  g53(.A(new_n68), .B(\a[1] ), .Y(new_n69));
  XOR2X1   g54(.A(new_n68), .B(\a[1] ), .Y(new_n70));
  XOR2X1   g55(.A(new_n19), .B(\b[0] ), .Y(new_n71));
  OAI21X1  g56(.A0(new_n71), .A1(\a[0] ), .B0(new_n70), .Y(new_n72));
  NAND4X1  g57(.A(cin), .B(\b[2] ), .C(\b[1] ), .D(\b[0] ), .Y(new_n73));
  XOR2X1   g58(.A(new_n73), .B(\b[3] ), .Y(new_n74));
  XOR2X1   g59(.A(new_n74), .B(new_n58), .Y(new_n75));
  NAND3X1  g60(.A(cin), .B(\b[1] ), .C(\b[0] ), .Y(new_n76));
  XOR2X1   g61(.A(new_n76), .B(new_n52), .Y(new_n77));
  XOR2X1   g62(.A(new_n77), .B(\a[2] ), .Y(new_n78));
  OR2X1    g63(.A(new_n78), .B(new_n75), .Y(new_n79));
  AOI21X1  g64(.A0(new_n72), .A1(new_n69), .B0(new_n79), .Y(new_n80));
  OR2X1    g65(.A(new_n77), .B(new_n36), .Y(new_n81));
  AOI21X1  g66(.A0(new_n74), .A1(\a[3] ), .B0(control), .Y(new_n82));
  OAI21X1  g67(.A0(new_n81), .A1(new_n75), .B0(new_n82), .Y(new_n83));
  AND2X1   g68(.A(new_n48), .B(new_n47), .Y(new_n84));
  XOR2X1   g69(.A(new_n84), .B(new_n62), .Y(new_n85));
  XOR2X1   g70(.A(new_n85), .B(\a[3] ), .Y(new_n86));
  NAND2X1  g71(.A(new_n33), .B(new_n32), .Y(new_n87));
  XOR2X1   g72(.A(new_n87), .B(new_n47), .Y(new_n88));
  XOR2X1   g73(.A(new_n88), .B(\a[2] ), .Y(new_n89));
  NAND2X1  g74(.A(new_n20), .B(cin), .Y(new_n90));
  XOR2X1   g75(.A(new_n90), .B(new_n32), .Y(new_n91));
  OR2X1    g76(.A(new_n91), .B(\a[1] ), .Y(new_n92));
  XOR2X1   g77(.A(new_n91), .B(new_n38), .Y(new_n93));
  AND2X1   g78(.A(new_n21), .B(\a[0] ), .Y(new_n94));
  OAI21X1  g79(.A0(new_n94), .A1(new_n93), .B0(new_n92), .Y(new_n95));
  NAND3X1  g80(.A(new_n95), .B(new_n89), .C(new_n86), .Y(new_n96));
  AND2X1   g81(.A(new_n64), .B(new_n58), .Y(new_n97));
  AND2X1   g82(.A(new_n49), .B(new_n36), .Y(new_n98));
  AOI21X1  g83(.A0(new_n98), .A1(new_n86), .B0(new_n97), .Y(new_n99));
  XOR2X1   g84(.A(new_n85), .B(\b[3] ), .Y(new_n100));
  XOR2X1   g85(.A(new_n88), .B(\b[2] ), .Y(new_n101));
  OR2X1    g86(.A(new_n91), .B(\b[1] ), .Y(new_n102));
  XOR2X1   g87(.A(new_n91), .B(new_n66), .Y(new_n103));
  AND2X1   g88(.A(new_n21), .B(\b[0] ), .Y(new_n104));
  OAI21X1  g89(.A0(new_n104), .A1(new_n103), .B0(new_n102), .Y(new_n105));
  NAND3X1  g90(.A(new_n105), .B(new_n101), .C(new_n100), .Y(new_n106));
  NOR2X1   g91(.A(new_n85), .B(\b[3] ), .Y(new_n107));
  AND2X1   g92(.A(new_n49), .B(new_n52), .Y(new_n108));
  AOI21X1  g93(.A0(new_n108), .A1(new_n100), .B0(new_n107), .Y(new_n109));
  AOI22X1  g94(.A0(new_n109), .A1(new_n106), .B0(new_n99), .B1(new_n96), .Y(new_n110));
  OAI22X1  g95(.A0(new_n110), .A1(new_n16), .B0(new_n83), .B1(new_n80), .Y(overflow));
endmodule


