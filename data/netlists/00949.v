// Benchmark "top_module" written by ABC on Wed Jun 26 15:22:25 2024

module top_module ( 
    \a[0] , \a[1] , \a[2] , \a[3] , \b[0] , \b[1] , \b[2] , \b[3] , mode,
    \data_in[0] , \data_in[1] , \data_in[2] , \data_in[3] , \data_in[4] ,
    \data_in[5] , \data_in[6] , \data_in[7] , \data_in[8] , \data_in[9] ,
    \data_in[10] , \data_in[11] , \data_in[12] , \data_in[13] ,
    \data_in[14] , \data_in[15] ,
    \final_out[0] , \final_out[1] , \final_out[2] , \final_out[3] ,
    \final_out[4] , \final_out[5] , \final_out[6] , \final_out[7] ,
    \final_out[8] , \final_out[9] , \final_out[10] , \final_out[11] ,
    \final_out[12] , \final_out[13] , \final_out[14] , \final_out[15] ,
    \final_out[16] , \final_out[17] , \final_out[18] , \final_out[19] ,
    \final_out[20] , \final_out[21] , \final_out[22] , \final_out[23] ,
    \final_out[24] , \final_out[25] , \final_out[26] , \final_out[27] ,
    \final_out[28] , \final_out[29] , \final_out[30] , \final_out[31]   );
  input  \a[0] , \a[1] , \a[2] , \a[3] , \b[0] , \b[1] , \b[2] , \b[3] ,
    mode, \data_in[0] , \data_in[1] , \data_in[2] , \data_in[3] ,
    \data_in[4] , \data_in[5] , \data_in[6] , \data_in[7] , \data_in[8] ,
    \data_in[9] , \data_in[10] , \data_in[11] , \data_in[12] ,
    \data_in[13] , \data_in[14] , \data_in[15] ;
  output \final_out[0] , \final_out[1] , \final_out[2] , \final_out[3] ,
    \final_out[4] , \final_out[5] , \final_out[6] , \final_out[7] ,
    \final_out[8] , \final_out[9] , \final_out[10] , \final_out[11] ,
    \final_out[12] , \final_out[13] , \final_out[14] , \final_out[15] ,
    \final_out[16] , \final_out[17] , \final_out[18] , \final_out[19] ,
    \final_out[20] , \final_out[21] , \final_out[22] , \final_out[23] ,
    \final_out[24] , \final_out[25] , \final_out[26] , \final_out[27] ,
    \final_out[28] , \final_out[29] , \final_out[30] , \final_out[31] ;
  wire new_n58, new_n59, new_n60, new_n61, new_n62, new_n63, new_n65,
    new_n66, new_n67, new_n68, new_n69, new_n70, new_n71, new_n72, new_n73,
    new_n74, new_n75, new_n76, new_n77, new_n78, new_n80, new_n81, new_n82,
    new_n83, new_n84, new_n85, new_n86, new_n87, new_n88, new_n89, new_n90,
    new_n91, new_n92, new_n93, new_n94, new_n95, new_n96, new_n97, new_n98,
    new_n100, new_n101, new_n102, new_n103, new_n104, new_n105, new_n106,
    new_n107, new_n108, new_n109, new_n110, new_n111, new_n112, new_n113,
    new_n114, new_n115, new_n116, new_n117, new_n118, new_n119, new_n120,
    new_n122, new_n123, new_n124, new_n125, new_n126, new_n127, new_n128,
    new_n129, new_n131, new_n132, new_n133, new_n134, new_n136, new_n137,
    new_n138, new_n139, new_n140, new_n142, new_n143, new_n144, new_n145,
    new_n147;
  INVX1    g000(.A(mode), .Y(new_n58));
  XOR2X1   g001(.A(\b[0] ), .B(\a[0] ), .Y(new_n59));
  INVX1    g002(.A(\data_in[8] ), .Y(new_n60));
  AND2X1   g003(.A(new_n60), .B(\data_in[0] ), .Y(new_n61));
  OR2X1    g004(.A(new_n61), .B(new_n59), .Y(new_n62));
  XOR2X1   g005(.A(new_n61), .B(new_n59), .Y(new_n63));
  MX2X1    g006(.A(new_n63), .B(new_n62), .S0(new_n58), .Y(\final_out[0] ));
  XOR2X1   g007(.A(\b[1] ), .B(\a[1] ), .Y(new_n65));
  INVX1    g008(.A(\a[0] ), .Y(new_n66));
  AND2X1   g009(.A(\b[0] ), .B(new_n66), .Y(new_n67));
  XOR2X1   g010(.A(new_n67), .B(new_n65), .Y(new_n68));
  AND2X1   g011(.A(\b[0] ), .B(\a[0] ), .Y(new_n69));
  XOR2X1   g012(.A(\b[1] ), .B(\a[1] ), .Y(new_n70));
  XOR2X1   g013(.A(new_n70), .B(new_n69), .Y(new_n71));
  MX2X1    g014(.A(new_n71), .B(new_n68), .S0(new_n58), .Y(new_n72));
  INVX1    g015(.A(\data_in[9] ), .Y(new_n73));
  AND2X1   g016(.A(new_n73), .B(\data_in[1] ), .Y(new_n74));
  OR2X1    g017(.A(new_n74), .B(new_n72), .Y(new_n75));
  XOR2X1   g018(.A(new_n74), .B(new_n72), .Y(new_n76));
  AND2X1   g019(.A(new_n61), .B(new_n59), .Y(new_n77));
  XOR2X1   g020(.A(new_n77), .B(new_n76), .Y(new_n78));
  MX2X1    g021(.A(new_n78), .B(new_n75), .S0(new_n58), .Y(\final_out[1] ));
  INVX1    g022(.A(\a[2] ), .Y(new_n80));
  XOR2X1   g023(.A(\b[2] ), .B(new_n80), .Y(new_n81));
  INVX1    g024(.A(\b[1] ), .Y(new_n82));
  AND2X1   g025(.A(new_n82), .B(\a[1] ), .Y(new_n83));
  AOI21X1  g026(.A0(\b[0] ), .A1(new_n66), .B0(new_n65), .Y(new_n84));
  OR2X1    g027(.A(new_n84), .B(new_n83), .Y(new_n85));
  XOR2X1   g028(.A(new_n85), .B(new_n81), .Y(new_n86));
  XOR2X1   g029(.A(\b[2] ), .B(new_n80), .Y(new_n87));
  AND2X1   g030(.A(\b[1] ), .B(\a[1] ), .Y(new_n88));
  AOI21X1  g031(.A0(new_n70), .A1(new_n69), .B0(new_n88), .Y(new_n89));
  XOR2X1   g032(.A(new_n89), .B(new_n87), .Y(new_n90));
  MX2X1    g033(.A(new_n90), .B(new_n86), .S0(new_n58), .Y(new_n91));
  INVX1    g034(.A(\data_in[2] ), .Y(new_n92));
  NOR2X1   g035(.A(\data_in[10] ), .B(new_n92), .Y(new_n93));
  OAI21X1  g036(.A0(new_n93), .A1(new_n91), .B0(new_n58), .Y(new_n94));
  XOR2X1   g037(.A(new_n93), .B(new_n91), .Y(new_n95));
  AND2X1   g038(.A(new_n74), .B(new_n72), .Y(new_n96));
  AOI21X1  g039(.A0(new_n77), .A1(new_n76), .B0(new_n96), .Y(new_n97));
  XOR2X1   g040(.A(new_n97), .B(new_n95), .Y(new_n98));
  OAI21X1  g041(.A0(new_n98), .A1(new_n58), .B0(new_n94), .Y(\final_out[2] ));
  INVX1    g042(.A(\a[3] ), .Y(new_n100));
  XOR2X1   g043(.A(\b[3] ), .B(new_n100), .Y(new_n101));
  NOR2X1   g044(.A(\b[2] ), .B(new_n80), .Y(new_n102));
  AOI21X1  g045(.A0(new_n85), .A1(new_n81), .B0(new_n102), .Y(new_n103));
  XOR2X1   g046(.A(new_n103), .B(new_n101), .Y(new_n104));
  XOR2X1   g047(.A(\b[3] ), .B(new_n100), .Y(new_n105));
  NAND2X1  g048(.A(\b[2] ), .B(\a[2] ), .Y(new_n106));
  OAI21X1  g049(.A0(new_n89), .A1(new_n87), .B0(new_n106), .Y(new_n107));
  XOR2X1   g050(.A(new_n107), .B(new_n105), .Y(new_n108));
  OR2X1    g051(.A(new_n108), .B(new_n58), .Y(new_n109));
  OAI21X1  g052(.A0(new_n104), .A1(mode), .B0(new_n109), .Y(new_n110));
  INVX1    g053(.A(\data_in[3] ), .Y(new_n111));
  NOR2X1   g054(.A(\data_in[11] ), .B(new_n111), .Y(new_n112));
  OAI21X1  g055(.A0(new_n112), .A1(new_n110), .B0(new_n58), .Y(new_n113));
  MX2X1    g056(.A(new_n108), .B(new_n104), .S0(new_n58), .Y(new_n114));
  XOR2X1   g057(.A(new_n112), .B(new_n114), .Y(new_n115));
  NAND2X1  g058(.A(new_n93), .B(new_n91), .Y(new_n116));
  AND2X1   g059(.A(new_n77), .B(new_n76), .Y(new_n117));
  OAI21X1  g060(.A0(new_n117), .A1(new_n96), .B0(new_n95), .Y(new_n118));
  NAND2X1  g061(.A(new_n118), .B(new_n116), .Y(new_n119));
  XOR2X1   g062(.A(new_n119), .B(new_n115), .Y(new_n120));
  OAI21X1  g063(.A0(new_n120), .A1(new_n58), .B0(new_n113), .Y(\final_out[3] ));
  INVX1    g064(.A(\data_in[4] ), .Y(new_n122));
  NOR2X1   g065(.A(\data_in[12] ), .B(new_n122), .Y(new_n123));
  INVX1    g066(.A(new_n123), .Y(new_n124));
  NOR2X1   g067(.A(new_n118), .B(new_n115), .Y(new_n125));
  NAND2X1  g068(.A(new_n112), .B(new_n110), .Y(new_n126));
  OAI21X1  g069(.A0(new_n116), .A1(new_n115), .B0(new_n126), .Y(new_n127));
  NOR2X1   g070(.A(new_n127), .B(new_n125), .Y(new_n128));
  XOR2X1   g071(.A(new_n128), .B(new_n124), .Y(new_n129));
  MX2X1    g072(.A(new_n129), .B(new_n123), .S0(new_n58), .Y(\final_out[4] ));
  INVX1    g073(.A(\data_in[5] ), .Y(new_n131));
  NOR2X1   g074(.A(\data_in[13] ), .B(new_n131), .Y(new_n132));
  NOR2X1   g075(.A(new_n128), .B(new_n124), .Y(new_n133));
  XOR2X1   g076(.A(new_n133), .B(new_n132), .Y(new_n134));
  MX2X1    g077(.A(new_n134), .B(new_n132), .S0(new_n58), .Y(\final_out[5] ));
  INVX1    g078(.A(\data_in[6] ), .Y(new_n136));
  NOR2X1   g079(.A(\data_in[14] ), .B(new_n136), .Y(new_n137));
  OR4X1    g080(.A(\data_in[13] ), .B(\data_in[12] ), .C(new_n131), .D(new_n122), .Y(new_n138));
  NOR2X1   g081(.A(new_n138), .B(new_n128), .Y(new_n139));
  XOR2X1   g082(.A(new_n139), .B(new_n137), .Y(new_n140));
  MX2X1    g083(.A(new_n140), .B(new_n137), .S0(new_n58), .Y(\final_out[6] ));
  INVX1    g084(.A(\data_in[15] ), .Y(new_n142));
  AND2X1   g085(.A(new_n142), .B(\data_in[7] ), .Y(new_n143));
  NOR4X1   g086(.A(new_n138), .B(new_n128), .C(\data_in[14] ), .D(new_n136), .Y(new_n144));
  XOR2X1   g087(.A(new_n144), .B(new_n143), .Y(new_n145));
  MX2X1    g088(.A(new_n145), .B(new_n143), .S0(new_n58), .Y(\final_out[7] ));
  NAND3X1  g089(.A(new_n143), .B(new_n137), .C(mode), .Y(new_n147));
  NOR3X1   g090(.A(new_n147), .B(new_n138), .C(new_n128), .Y(\final_out[8] ));
  ZERO     g091(.Y(\final_out[9] ));
  ZERO     g092(.Y(\final_out[10] ));
  ZERO     g093(.Y(\final_out[11] ));
  ZERO     g094(.Y(\final_out[12] ));
  ZERO     g095(.Y(\final_out[13] ));
  ZERO     g096(.Y(\final_out[14] ));
  ZERO     g097(.Y(\final_out[15] ));
  ZERO     g098(.Y(\final_out[16] ));
  ZERO     g099(.Y(\final_out[17] ));
  ZERO     g100(.Y(\final_out[18] ));
  ZERO     g101(.Y(\final_out[19] ));
  ZERO     g102(.Y(\final_out[20] ));
  ZERO     g103(.Y(\final_out[21] ));
  ZERO     g104(.Y(\final_out[22] ));
  ZERO     g105(.Y(\final_out[23] ));
  ZERO     g106(.Y(\final_out[24] ));
  ZERO     g107(.Y(\final_out[25] ));
  ZERO     g108(.Y(\final_out[26] ));
  ZERO     g109(.Y(\final_out[27] ));
  ZERO     g110(.Y(\final_out[28] ));
  ZERO     g111(.Y(\final_out[29] ));
  ZERO     g112(.Y(\final_out[30] ));
  ZERO     g113(.Y(\final_out[31] ));
endmodule


