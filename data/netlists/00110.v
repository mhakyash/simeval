// Benchmark "axi_to_fifo" written by ABC on Wed Jun 26 15:22:00 2024

module axi_to_fifo ( clock, 
    aclk, areset_d1, m_axi_bvalid, mhandshake_r, shandshake_r, sel,
    \in[0] , \in[1] ,
    m_axi_bready, mhandshake, \Q[0] , \Q[1] , \skid_buffer_reg[0] ,
    \skid_buffer_reg[1]   );
  input  clock;
  input  aclk, areset_d1, m_axi_bvalid, mhandshake_r, shandshake_r, sel,
    \in[0] , \in[1] ;
  output m_axi_bready, mhandshake, \Q[0] , \Q[1] , \skid_buffer_reg[0] ,
    \skid_buffer_reg[1] ;
  reg \read_ptr_0[0] , \read_ptr_0[1] , \read_ptr_0[2] , \read_ptr_0[3] ,
    \write_ptr_0[0] , \write_ptr_0[1] , \write_ptr_0[2] , \write_ptr_0[3] ,
    \write_ptr_1[0] , \write_ptr_1[1] , \write_ptr_1[2] , \write_ptr_1[3] ,
    sel_reg;
  wire new_n54, new_n56, new_n57, new_n58, new_n59, new_n60_1, new_n61,
    new_n62, new_n63, new_n64, new_n65_1, new_n66, new_n67, new_n73,
    new_n74, new_n75_1, new_n76, new_n77, new_n78, new_n80_1, new_n81,
    new_n82, new_n83, new_n85_1, new_n86, new_n87, new_n88, new_n89,
    new_n91, new_n92, new_n93, new_n94, new_n95, new_n96, new_n98, new_n99,
    new_n100, new_n101, new_n102, new_n104, new_n105, new_n106, new_n107,
    new_n109, new_n110, new_n111, new_n112, new_n113, new_n115, new_n116,
    new_n117, new_n118, new_n119, new_n120, new_n122, new_n123, new_n124,
    new_n125, new_n127, new_n128, new_n129, new_n131, new_n132, new_n133,
    new_n134, new_n135, new_n137, new_n138, new_n139, new_n140, new_n141,
    new_n142, n30, n35, n40, n45, n50, n55, n60, n65, n70, n75, n80, n85,
    n90;
  INVX1    g00(.A(mhandshake_r), .Y(new_n54));
  AND2X1   g01(.A(new_n54), .B(m_axi_bvalid), .Y(m_axi_bready));
  NAND2X1  g02(.A(mhandshake_r), .B(m_axi_bvalid), .Y(new_n56));
  XOR2X1   g03(.A(\write_ptr_0[2] ), .B(\read_ptr_0[2] ), .Y(new_n57));
  XOR2X1   g04(.A(\write_ptr_0[3] ), .B(\read_ptr_0[3] ), .Y(new_n58));
  XOR2X1   g05(.A(\write_ptr_0[0] ), .B(\read_ptr_0[0] ), .Y(new_n59));
  XOR2X1   g06(.A(\write_ptr_0[1] ), .B(\read_ptr_0[1] ), .Y(new_n60_1));
  NOR4X1   g07(.A(new_n60_1), .B(new_n59), .C(new_n58), .D(new_n57), .Y(new_n61));
  AND2X1   g08(.A(shandshake_r), .B(new_n54), .Y(new_n62));
  NOR2X1   g09(.A(shandshake_r), .B(new_n54), .Y(new_n63));
  INVX1    g10(.A(sel_reg), .Y(new_n64));
  NOR4X1   g11(.A(\write_ptr_1[3] ), .B(\write_ptr_1[2] ), .C(\write_ptr_1[1] ), .D(\write_ptr_1[0] ), .Y(new_n65_1));
  MX2X1    g12(.A(new_n65_1), .B(new_n61), .S0(new_n64), .Y(new_n66));
  AOI22X1  g13(.A0(new_n66), .A1(new_n62), .B0(new_n63), .B1(new_n61), .Y(new_n67));
  NAND2X1  g14(.A(new_n67), .B(new_n56), .Y(mhandshake));
  INVX1    g15(.A(areset_d1), .Y(new_n73));
  OR2X1    g16(.A(shandshake_r), .B(new_n54), .Y(new_n74));
  INVX1    g17(.A(\read_ptr_0[0] ), .Y(new_n75_1));
  XOR2X1   g18(.A(new_n61), .B(new_n75_1), .Y(new_n76));
  MX2X1    g19(.A(new_n76), .B(\read_ptr_0[0] ), .S0(new_n74), .Y(new_n77));
  MX2X1    g20(.A(new_n77), .B(\read_ptr_0[0] ), .S0(new_n62), .Y(new_n78));
  AND2X1   g21(.A(new_n78), .B(new_n73), .Y(n30));
  XOR2X1   g22(.A(\read_ptr_0[1] ), .B(\read_ptr_0[0] ), .Y(new_n80_1));
  MX2X1    g23(.A(new_n80_1), .B(\read_ptr_0[1] ), .S0(new_n61), .Y(new_n81));
  MX2X1    g24(.A(new_n81), .B(\read_ptr_0[1] ), .S0(new_n74), .Y(new_n82));
  MX2X1    g25(.A(new_n82), .B(\read_ptr_0[1] ), .S0(new_n62), .Y(new_n83));
  AND2X1   g26(.A(new_n83), .B(new_n73), .Y(n35));
  AND2X1   g27(.A(\read_ptr_0[1] ), .B(\read_ptr_0[0] ), .Y(new_n85_1));
  XOR2X1   g28(.A(new_n85_1), .B(\read_ptr_0[2] ), .Y(new_n86));
  MX2X1    g29(.A(new_n86), .B(\read_ptr_0[2] ), .S0(new_n61), .Y(new_n87));
  MX2X1    g30(.A(new_n87), .B(\read_ptr_0[2] ), .S0(new_n74), .Y(new_n88));
  MX2X1    g31(.A(new_n88), .B(\read_ptr_0[2] ), .S0(new_n62), .Y(new_n89));
  AND2X1   g32(.A(new_n89), .B(new_n73), .Y(n40));
  INVX1    g33(.A(\read_ptr_0[3] ), .Y(new_n91));
  NAND3X1  g34(.A(\read_ptr_0[2] ), .B(\read_ptr_0[1] ), .C(\read_ptr_0[0] ), .Y(new_n92));
  XOR2X1   g35(.A(new_n92), .B(new_n91), .Y(new_n93));
  MX2X1    g36(.A(new_n93), .B(\read_ptr_0[3] ), .S0(new_n61), .Y(new_n94));
  MX2X1    g37(.A(new_n94), .B(\read_ptr_0[3] ), .S0(new_n74), .Y(new_n95));
  MX2X1    g38(.A(new_n95), .B(\read_ptr_0[3] ), .S0(new_n62), .Y(new_n96));
  AND2X1   g39(.A(new_n96), .B(new_n73), .Y(n45));
  INVX1    g40(.A(new_n62), .Y(new_n98));
  INVX1    g41(.A(\write_ptr_0[0] ), .Y(new_n99));
  XOR2X1   g42(.A(new_n61), .B(new_n99), .Y(new_n100));
  MX2X1    g43(.A(new_n100), .B(\write_ptr_0[0] ), .S0(sel_reg), .Y(new_n101));
  MX2X1    g44(.A(new_n101), .B(\write_ptr_0[0] ), .S0(new_n98), .Y(new_n102));
  AND2X1   g45(.A(new_n102), .B(new_n73), .Y(n50));
  XOR2X1   g46(.A(\write_ptr_0[1] ), .B(\write_ptr_0[0] ), .Y(new_n104));
  MX2X1    g47(.A(new_n104), .B(\write_ptr_0[1] ), .S0(new_n61), .Y(new_n105));
  MX2X1    g48(.A(new_n105), .B(\write_ptr_0[1] ), .S0(sel_reg), .Y(new_n106));
  MX2X1    g49(.A(new_n106), .B(\write_ptr_0[1] ), .S0(new_n98), .Y(new_n107));
  AND2X1   g50(.A(new_n107), .B(new_n73), .Y(n55));
  AND2X1   g51(.A(\write_ptr_0[1] ), .B(\write_ptr_0[0] ), .Y(new_n109));
  XOR2X1   g52(.A(new_n109), .B(\write_ptr_0[2] ), .Y(new_n110));
  MX2X1    g53(.A(new_n110), .B(\write_ptr_0[2] ), .S0(new_n61), .Y(new_n111));
  MX2X1    g54(.A(new_n111), .B(\write_ptr_0[2] ), .S0(sel_reg), .Y(new_n112));
  MX2X1    g55(.A(new_n112), .B(\write_ptr_0[2] ), .S0(new_n98), .Y(new_n113));
  AND2X1   g56(.A(new_n113), .B(new_n73), .Y(n60));
  INVX1    g57(.A(\write_ptr_0[3] ), .Y(new_n115));
  NAND3X1  g58(.A(\write_ptr_0[2] ), .B(\write_ptr_0[1] ), .C(\write_ptr_0[0] ), .Y(new_n116));
  XOR2X1   g59(.A(new_n116), .B(new_n115), .Y(new_n117));
  MX2X1    g60(.A(new_n117), .B(\write_ptr_0[3] ), .S0(new_n61), .Y(new_n118));
  MX2X1    g61(.A(new_n118), .B(\write_ptr_0[3] ), .S0(sel_reg), .Y(new_n119));
  MX2X1    g62(.A(new_n119), .B(\write_ptr_0[3] ), .S0(new_n98), .Y(new_n120));
  AND2X1   g63(.A(new_n120), .B(new_n73), .Y(n65));
  INVX1    g64(.A(\write_ptr_1[0] ), .Y(new_n122));
  XOR2X1   g65(.A(new_n65_1), .B(new_n122), .Y(new_n123));
  MX2X1    g66(.A(new_n123), .B(\write_ptr_1[0] ), .S0(new_n64), .Y(new_n124));
  MX2X1    g67(.A(new_n124), .B(\write_ptr_1[0] ), .S0(new_n98), .Y(new_n125));
  AND2X1   g68(.A(new_n125), .B(new_n73), .Y(n70));
  XOR2X1   g69(.A(\write_ptr_1[1] ), .B(\write_ptr_1[0] ), .Y(new_n127));
  MX2X1    g70(.A(new_n127), .B(\write_ptr_1[1] ), .S0(new_n64), .Y(new_n128));
  MX2X1    g71(.A(\write_ptr_1[1] ), .B(new_n128), .S0(new_n62), .Y(new_n129));
  AND2X1   g72(.A(new_n129), .B(new_n73), .Y(n75));
  AND2X1   g73(.A(\write_ptr_1[1] ), .B(\write_ptr_1[0] ), .Y(new_n131));
  XOR2X1   g74(.A(new_n131), .B(\write_ptr_1[2] ), .Y(new_n132));
  MX2X1    g75(.A(new_n132), .B(\write_ptr_1[2] ), .S0(new_n65_1), .Y(new_n133));
  MX2X1    g76(.A(new_n133), .B(\write_ptr_1[2] ), .S0(new_n64), .Y(new_n134));
  MX2X1    g77(.A(new_n134), .B(\write_ptr_1[2] ), .S0(new_n98), .Y(new_n135));
  AND2X1   g78(.A(new_n135), .B(new_n73), .Y(n80));
  INVX1    g79(.A(\write_ptr_1[3] ), .Y(new_n137));
  NAND3X1  g80(.A(\write_ptr_1[2] ), .B(\write_ptr_1[1] ), .C(\write_ptr_1[0] ), .Y(new_n138));
  XOR2X1   g81(.A(new_n138), .B(new_n137), .Y(new_n139));
  MX2X1    g82(.A(new_n139), .B(\write_ptr_1[3] ), .S0(new_n65_1), .Y(new_n140));
  MX2X1    g83(.A(new_n140), .B(\write_ptr_1[3] ), .S0(new_n64), .Y(new_n141));
  MX2X1    g84(.A(new_n141), .B(\write_ptr_1[3] ), .S0(new_n98), .Y(new_n142));
  AND2X1   g85(.A(new_n142), .B(new_n73), .Y(n85));
  AND2X1   g86(.A(sel), .B(new_n73), .Y(n90));
  ZERO     g87(.Y(\Q[0] ));
  ZERO     g88(.Y(\Q[1] ));
  ZERO     g89(.Y(\skid_buffer_reg[0] ));
  ZERO     g90(.Y(\skid_buffer_reg[1] ));
  always @ (posedge clock) begin
    \read_ptr_0[0]  <= n30;
    \read_ptr_0[1]  <= n35;
    \read_ptr_0[2]  <= n40;
    \read_ptr_0[3]  <= n45;
    \write_ptr_0[0]  <= n50;
    \write_ptr_0[1]  <= n55;
    \write_ptr_0[2]  <= n60;
    \write_ptr_0[3]  <= n65;
    \write_ptr_1[0]  <= n70;
    \write_ptr_1[1]  <= n75;
    \write_ptr_1[2]  <= n80;
    \write_ptr_1[3]  <= n85;
    sel_reg <= n90;
  end
endmodule


