// Benchmark "wb_mcb_32" written by ABC on Wed Jun 26 15:22:11 2024

module wb_mcb_32 ( clock, 
    clk, rst, \wb_adr_i[0] , \wb_adr_i[1] , \wb_adr_i[2] , \wb_adr_i[3] ,
    \wb_adr_i[4] , \wb_adr_i[5] , \wb_adr_i[6] , \wb_adr_i[7] ,
    \wb_adr_i[8] , \wb_adr_i[9] , \wb_adr_i[10] , \wb_adr_i[11] ,
    \wb_adr_i[12] , \wb_adr_i[13] , \wb_adr_i[14] , \wb_adr_i[15] ,
    \wb_adr_i[16] , \wb_adr_i[17] , \wb_adr_i[18] , \wb_adr_i[19] ,
    \wb_adr_i[20] , \wb_adr_i[21] , \wb_adr_i[22] , \wb_adr_i[23] ,
    \wb_adr_i[24] , \wb_adr_i[25] , \wb_adr_i[26] , \wb_adr_i[27] ,
    \wb_adr_i[28] , \wb_adr_i[29] , \wb_adr_i[30] , \wb_adr_i[31] ,
    \wb_dat_i[0] , \wb_dat_i[1] , \wb_dat_i[2] , \wb_dat_i[3] ,
    \wb_dat_i[4] , \wb_dat_i[5] , \wb_dat_i[6] , \wb_dat_i[7] ,
    \wb_dat_i[8] , \wb_dat_i[9] , \wb_dat_i[10] , \wb_dat_i[11] ,
    \wb_dat_i[12] , \wb_dat_i[13] , \wb_dat_i[14] , \wb_dat_i[15] ,
    \wb_dat_i[16] , \wb_dat_i[17] , \wb_dat_i[18] , \wb_dat_i[19] ,
    \wb_dat_i[20] , \wb_dat_i[21] , \wb_dat_i[22] , \wb_dat_i[23] ,
    \wb_dat_i[24] , \wb_dat_i[25] , \wb_dat_i[26] , \wb_dat_i[27] ,
    \wb_dat_i[28] , \wb_dat_i[29] , \wb_dat_i[30] , \wb_dat_i[31] ,
    wb_we_i, \wb_sel_i[0] , \wb_sel_i[1] , \wb_sel_i[2] , \wb_sel_i[3] ,
    wb_stb_i, wb_cyc_i, mcb_cmd_empty, mcb_cmd_full, mcb_wr_empty,
    mcb_wr_full, mcb_wr_underrun, \mcb_wr_count[0] , \mcb_wr_count[1] ,
    \mcb_wr_count[2] , \mcb_wr_count[3] , \mcb_wr_count[4] ,
    \mcb_wr_count[5] , \mcb_wr_count[6] , mcb_wr_error, \mcb_rd_data[0] ,
    \mcb_rd_data[1] , \mcb_rd_data[2] , \mcb_rd_data[3] , \mcb_rd_data[4] ,
    \mcb_rd_data[5] , \mcb_rd_data[6] , \mcb_rd_data[7] , \mcb_rd_data[8] ,
    \mcb_rd_data[9] , \mcb_rd_data[10] , \mcb_rd_data[11] ,
    \mcb_rd_data[12] , \mcb_rd_data[13] , \mcb_rd_data[14] ,
    \mcb_rd_data[15] , \mcb_rd_data[16] , \mcb_rd_data[17] ,
    \mcb_rd_data[18] , \mcb_rd_data[19] , \mcb_rd_data[20] ,
    \mcb_rd_data[21] , \mcb_rd_data[22] , \mcb_rd_data[23] ,
    \mcb_rd_data[24] , \mcb_rd_data[25] , \mcb_rd_data[26] ,
    \mcb_rd_data[27] , \mcb_rd_data[28] , \mcb_rd_data[29] ,
    \mcb_rd_data[30] , \mcb_rd_data[31] , mcb_rd_empty, mcb_rd_full,
    mcb_rd_overflow, \mcb_rd_count[0] , \mcb_rd_count[1] ,
    \mcb_rd_count[2] , \mcb_rd_count[3] , \mcb_rd_count[4] ,
    \mcb_rd_count[5] , \mcb_rd_count[6] , mcb_rd_error,
    \wb_dat_o[0] , \wb_dat_o[1] , \wb_dat_o[2] , \wb_dat_o[3] ,
    \wb_dat_o[4] , \wb_dat_o[5] , \wb_dat_o[6] , \wb_dat_o[7] ,
    \wb_dat_o[8] , \wb_dat_o[9] , \wb_dat_o[10] , \wb_dat_o[11] ,
    \wb_dat_o[12] , \wb_dat_o[13] , \wb_dat_o[14] , \wb_dat_o[15] ,
    \wb_dat_o[16] , \wb_dat_o[17] , \wb_dat_o[18] , \wb_dat_o[19] ,
    \wb_dat_o[20] , \wb_dat_o[21] , \wb_dat_o[22] , \wb_dat_o[23] ,
    \wb_dat_o[24] , \wb_dat_o[25] , \wb_dat_o[26] , \wb_dat_o[27] ,
    \wb_dat_o[28] , \wb_dat_o[29] , \wb_dat_o[30] , \wb_dat_o[31] ,
    wb_ack_o, mcb_cmd_clk, mcb_cmd_en, \mcb_cmd_instr[0] ,
    \mcb_cmd_instr[1] , \mcb_cmd_instr[2] , \mcb_cmd_bl[0] ,
    \mcb_cmd_bl[1] , \mcb_cmd_bl[2] , \mcb_cmd_bl[3] , \mcb_cmd_bl[4] ,
    \mcb_cmd_bl[5] , \mcb_cmd_byte_addr[0] , \mcb_cmd_byte_addr[1] ,
    \mcb_cmd_byte_addr[2] , \mcb_cmd_byte_addr[3] , \mcb_cmd_byte_addr[4] ,
    \mcb_cmd_byte_addr[5] , \mcb_cmd_byte_addr[6] , \mcb_cmd_byte_addr[7] ,
    \mcb_cmd_byte_addr[8] , \mcb_cmd_byte_addr[9] ,
    \mcb_cmd_byte_addr[10] , \mcb_cmd_byte_addr[11] ,
    \mcb_cmd_byte_addr[12] , \mcb_cmd_byte_addr[13] ,
    \mcb_cmd_byte_addr[14] , \mcb_cmd_byte_addr[15] ,
    \mcb_cmd_byte_addr[16] , \mcb_cmd_byte_addr[17] ,
    \mcb_cmd_byte_addr[18] , \mcb_cmd_byte_addr[19] ,
    \mcb_cmd_byte_addr[20] , \mcb_cmd_byte_addr[21] ,
    \mcb_cmd_byte_addr[22] , \mcb_cmd_byte_addr[23] ,
    \mcb_cmd_byte_addr[24] , \mcb_cmd_byte_addr[25] ,
    \mcb_cmd_byte_addr[26] , \mcb_cmd_byte_addr[27] ,
    \mcb_cmd_byte_addr[28] , \mcb_cmd_byte_addr[29] ,
    \mcb_cmd_byte_addr[30] , \mcb_cmd_byte_addr[31] , mcb_wr_clk,
    mcb_wr_en, \mcb_wr_mask[0] , \mcb_wr_mask[1] , \mcb_wr_mask[2] ,
    \mcb_wr_mask[3] , \mcb_wr_data[0] , \mcb_wr_data[1] , \mcb_wr_data[2] ,
    \mcb_wr_data[3] , \mcb_wr_data[4] , \mcb_wr_data[5] , \mcb_wr_data[6] ,
    \mcb_wr_data[7] , \mcb_wr_data[8] , \mcb_wr_data[9] ,
    \mcb_wr_data[10] , \mcb_wr_data[11] , \mcb_wr_data[12] ,
    \mcb_wr_data[13] , \mcb_wr_data[14] , \mcb_wr_data[15] ,
    \mcb_wr_data[16] , \mcb_wr_data[17] , \mcb_wr_data[18] ,
    \mcb_wr_data[19] , \mcb_wr_data[20] , \mcb_wr_data[21] ,
    \mcb_wr_data[22] , \mcb_wr_data[23] , \mcb_wr_data[24] ,
    \mcb_wr_data[25] , \mcb_wr_data[26] , \mcb_wr_data[27] ,
    \mcb_wr_data[28] , \mcb_wr_data[29] , \mcb_wr_data[30] ,
    \mcb_wr_data[31] , mcb_rd_clk, mcb_rd_en  );
  input  clock;
  input  clk, rst, \wb_adr_i[0] , \wb_adr_i[1] , \wb_adr_i[2] ,
    \wb_adr_i[3] , \wb_adr_i[4] , \wb_adr_i[5] , \wb_adr_i[6] ,
    \wb_adr_i[7] , \wb_adr_i[8] , \wb_adr_i[9] , \wb_adr_i[10] ,
    \wb_adr_i[11] , \wb_adr_i[12] , \wb_adr_i[13] , \wb_adr_i[14] ,
    \wb_adr_i[15] , \wb_adr_i[16] , \wb_adr_i[17] , \wb_adr_i[18] ,
    \wb_adr_i[19] , \wb_adr_i[20] , \wb_adr_i[21] , \wb_adr_i[22] ,
    \wb_adr_i[23] , \wb_adr_i[24] , \wb_adr_i[25] , \wb_adr_i[26] ,
    \wb_adr_i[27] , \wb_adr_i[28] , \wb_adr_i[29] , \wb_adr_i[30] ,
    \wb_adr_i[31] , \wb_dat_i[0] , \wb_dat_i[1] , \wb_dat_i[2] ,
    \wb_dat_i[3] , \wb_dat_i[4] , \wb_dat_i[5] , \wb_dat_i[6] ,
    \wb_dat_i[7] , \wb_dat_i[8] , \wb_dat_i[9] , \wb_dat_i[10] ,
    \wb_dat_i[11] , \wb_dat_i[12] , \wb_dat_i[13] , \wb_dat_i[14] ,
    \wb_dat_i[15] , \wb_dat_i[16] , \wb_dat_i[17] , \wb_dat_i[18] ,
    \wb_dat_i[19] , \wb_dat_i[20] , \wb_dat_i[21] , \wb_dat_i[22] ,
    \wb_dat_i[23] , \wb_dat_i[24] , \wb_dat_i[25] , \wb_dat_i[26] ,
    \wb_dat_i[27] , \wb_dat_i[28] , \wb_dat_i[29] , \wb_dat_i[30] ,
    \wb_dat_i[31] , wb_we_i, \wb_sel_i[0] , \wb_sel_i[1] , \wb_sel_i[2] ,
    \wb_sel_i[3] , wb_stb_i, wb_cyc_i, mcb_cmd_empty, mcb_cmd_full,
    mcb_wr_empty, mcb_wr_full, mcb_wr_underrun, \mcb_wr_count[0] ,
    \mcb_wr_count[1] , \mcb_wr_count[2] , \mcb_wr_count[3] ,
    \mcb_wr_count[4] , \mcb_wr_count[5] , \mcb_wr_count[6] , mcb_wr_error,
    \mcb_rd_data[0] , \mcb_rd_data[1] , \mcb_rd_data[2] , \mcb_rd_data[3] ,
    \mcb_rd_data[4] , \mcb_rd_data[5] , \mcb_rd_data[6] , \mcb_rd_data[7] ,
    \mcb_rd_data[8] , \mcb_rd_data[9] , \mcb_rd_data[10] ,
    \mcb_rd_data[11] , \mcb_rd_data[12] , \mcb_rd_data[13] ,
    \mcb_rd_data[14] , \mcb_rd_data[15] , \mcb_rd_data[16] ,
    \mcb_rd_data[17] , \mcb_rd_data[18] , \mcb_rd_data[19] ,
    \mcb_rd_data[20] , \mcb_rd_data[21] , \mcb_rd_data[22] ,
    \mcb_rd_data[23] , \mcb_rd_data[24] , \mcb_rd_data[25] ,
    \mcb_rd_data[26] , \mcb_rd_data[27] , \mcb_rd_data[28] ,
    \mcb_rd_data[29] , \mcb_rd_data[30] , \mcb_rd_data[31] , mcb_rd_empty,
    mcb_rd_full, mcb_rd_overflow, \mcb_rd_count[0] , \mcb_rd_count[1] ,
    \mcb_rd_count[2] , \mcb_rd_count[3] , \mcb_rd_count[4] ,
    \mcb_rd_count[5] , \mcb_rd_count[6] , mcb_rd_error;
  output \wb_dat_o[0] , \wb_dat_o[1] , \wb_dat_o[2] , \wb_dat_o[3] ,
    \wb_dat_o[4] , \wb_dat_o[5] , \wb_dat_o[6] , \wb_dat_o[7] ,
    \wb_dat_o[8] , \wb_dat_o[9] , \wb_dat_o[10] , \wb_dat_o[11] ,
    \wb_dat_o[12] , \wb_dat_o[13] , \wb_dat_o[14] , \wb_dat_o[15] ,
    \wb_dat_o[16] , \wb_dat_o[17] , \wb_dat_o[18] , \wb_dat_o[19] ,
    \wb_dat_o[20] , \wb_dat_o[21] , \wb_dat_o[22] , \wb_dat_o[23] ,
    \wb_dat_o[24] , \wb_dat_o[25] , \wb_dat_o[26] , \wb_dat_o[27] ,
    \wb_dat_o[28] , \wb_dat_o[29] , \wb_dat_o[30] , \wb_dat_o[31] ,
    wb_ack_o, mcb_cmd_clk, mcb_cmd_en, \mcb_cmd_instr[0] ,
    \mcb_cmd_instr[1] , \mcb_cmd_instr[2] , \mcb_cmd_bl[0] ,
    \mcb_cmd_bl[1] , \mcb_cmd_bl[2] , \mcb_cmd_bl[3] , \mcb_cmd_bl[4] ,
    \mcb_cmd_bl[5] , \mcb_cmd_byte_addr[0] , \mcb_cmd_byte_addr[1] ,
    \mcb_cmd_byte_addr[2] , \mcb_cmd_byte_addr[3] , \mcb_cmd_byte_addr[4] ,
    \mcb_cmd_byte_addr[5] , \mcb_cmd_byte_addr[6] , \mcb_cmd_byte_addr[7] ,
    \mcb_cmd_byte_addr[8] , \mcb_cmd_byte_addr[9] ,
    \mcb_cmd_byte_addr[10] , \mcb_cmd_byte_addr[11] ,
    \mcb_cmd_byte_addr[12] , \mcb_cmd_byte_addr[13] ,
    \mcb_cmd_byte_addr[14] , \mcb_cmd_byte_addr[15] ,
    \mcb_cmd_byte_addr[16] , \mcb_cmd_byte_addr[17] ,
    \mcb_cmd_byte_addr[18] , \mcb_cmd_byte_addr[19] ,
    \mcb_cmd_byte_addr[20] , \mcb_cmd_byte_addr[21] ,
    \mcb_cmd_byte_addr[22] , \mcb_cmd_byte_addr[23] ,
    \mcb_cmd_byte_addr[24] , \mcb_cmd_byte_addr[25] ,
    \mcb_cmd_byte_addr[26] , \mcb_cmd_byte_addr[27] ,
    \mcb_cmd_byte_addr[28] , \mcb_cmd_byte_addr[29] ,
    \mcb_cmd_byte_addr[30] , \mcb_cmd_byte_addr[31] , mcb_wr_clk,
    mcb_wr_en, \mcb_wr_mask[0] , \mcb_wr_mask[1] , \mcb_wr_mask[2] ,
    \mcb_wr_mask[3] , \mcb_wr_data[0] , \mcb_wr_data[1] , \mcb_wr_data[2] ,
    \mcb_wr_data[3] , \mcb_wr_data[4] , \mcb_wr_data[5] , \mcb_wr_data[6] ,
    \mcb_wr_data[7] , \mcb_wr_data[8] , \mcb_wr_data[9] ,
    \mcb_wr_data[10] , \mcb_wr_data[11] , \mcb_wr_data[12] ,
    \mcb_wr_data[13] , \mcb_wr_data[14] , \mcb_wr_data[15] ,
    \mcb_wr_data[16] , \mcb_wr_data[17] , \mcb_wr_data[18] ,
    \mcb_wr_data[19] , \mcb_wr_data[20] , \mcb_wr_data[21] ,
    \mcb_wr_data[22] , \mcb_wr_data[23] , \mcb_wr_data[24] ,
    \mcb_wr_data[25] , \mcb_wr_data[26] , \mcb_wr_data[27] ,
    \mcb_wr_data[28] , \mcb_wr_data[29] , \mcb_wr_data[30] ,
    \mcb_wr_data[31] , mcb_rd_clk, mcb_rd_en;
  reg cycle_reg, \wb_dat_reg[0] , \wb_dat_reg[1] , \wb_dat_reg[2] ,
    \wb_dat_reg[3] , \wb_dat_reg[4] , \wb_dat_reg[5] , \wb_dat_reg[6] ,
    \wb_dat_reg[7] , \wb_dat_reg[8] , \wb_dat_reg[9] , \wb_dat_reg[10] ,
    \wb_dat_reg[11] , \wb_dat_reg[12] , \wb_dat_reg[13] , \wb_dat_reg[14] ,
    \wb_dat_reg[15] , \wb_dat_reg[16] , \wb_dat_reg[17] , \wb_dat_reg[18] ,
    \wb_dat_reg[19] , \wb_dat_reg[20] , \wb_dat_reg[21] , \wb_dat_reg[22] ,
    \wb_dat_reg[23] , \wb_dat_reg[24] , \wb_dat_reg[25] , \wb_dat_reg[26] ,
    \wb_dat_reg[27] , \wb_dat_reg[28] , \wb_dat_reg[29] , \wb_dat_reg[30] ,
    \wb_dat_reg[31] , wb_ack_reg, mcb_cmd_en_reg, mcb_cmd_instr_reg,
    mcb_wr_en_reg, \mcb_wr_mask_reg[0] , \mcb_wr_mask_reg[1] ,
    \mcb_wr_mask_reg[2] , \mcb_wr_mask_reg[3] ;
  wire new_n378, new_n379, new_n380, new_n382, new_n383, new_n384, new_n386,
    new_n387, new_n389, new_n390, new_n392, new_n393, new_n395, new_n396,
    new_n398, new_n399, new_n401, new_n402, new_n404, new_n405, new_n407,
    new_n408, new_n410, new_n411, new_n413, new_n414, new_n416, new_n417,
    new_n419, new_n420, new_n422, new_n423, new_n425, new_n426, new_n428,
    new_n429, new_n431, new_n432, new_n434, new_n435, new_n437, new_n438,
    new_n440, new_n441, new_n443, new_n444, new_n446, new_n447, new_n449,
    new_n450, new_n452, new_n453, new_n455, new_n456, new_n458, new_n459,
    new_n461, new_n462, new_n464, new_n465, new_n467, new_n468, new_n470,
    new_n471, new_n473, new_n474, new_n476, new_n477, new_n479, new_n480,
    new_n481, new_n486, new_n487, new_n488, new_n489, new_n490, new_n492_1,
    new_n493, new_n494, new_n495, new_n497_1, new_n498, new_n499, new_n500,
    new_n502_1, new_n503, new_n504, new_n505, n492, n497, n502, n507, n512,
    n517, n522, n527, n532, n537, n542, n547, n552, n557, n562, n567, n572,
    n577, n582, n587, n592, n597, n602, n607, n612, n617, n622, n627, n632,
    n637, n642, n647, n652, n657, n662, n667, n672, n677, n682, n687, n692;
  NAND2X1  g000(.A(wb_cyc_i), .B(wb_stb_i), .Y(new_n378));
  OR4X1    g001(.A(new_n378), .B(wb_ack_reg), .C(cycle_reg), .D(wb_we_i), .Y(new_n379));
  NAND2X1  g002(.A(cycle_reg), .B(mcb_rd_empty), .Y(new_n380));
  AOI21X1  g003(.A0(new_n380), .A1(new_n379), .B0(rst), .Y(n492));
  INVX1    g004(.A(cycle_reg), .Y(new_n382));
  MX2X1    g005(.A(\mcb_rd_data[0] ), .B(\wb_dat_reg[0] ), .S0(mcb_rd_empty), .Y(new_n383));
  MX2X1    g006(.A(new_n383), .B(\wb_dat_reg[0] ), .S0(new_n382), .Y(new_n384));
  MX2X1    g007(.A(new_n384), .B(\wb_dat_reg[0] ), .S0(rst), .Y(n497));
  MX2X1    g008(.A(\mcb_rd_data[1] ), .B(\wb_dat_reg[1] ), .S0(mcb_rd_empty), .Y(new_n386));
  MX2X1    g009(.A(new_n386), .B(\wb_dat_reg[1] ), .S0(new_n382), .Y(new_n387));
  MX2X1    g010(.A(new_n387), .B(\wb_dat_reg[1] ), .S0(rst), .Y(n502));
  MX2X1    g011(.A(\mcb_rd_data[2] ), .B(\wb_dat_reg[2] ), .S0(mcb_rd_empty), .Y(new_n389));
  MX2X1    g012(.A(new_n389), .B(\wb_dat_reg[2] ), .S0(new_n382), .Y(new_n390));
  MX2X1    g013(.A(new_n390), .B(\wb_dat_reg[2] ), .S0(rst), .Y(n507));
  MX2X1    g014(.A(\mcb_rd_data[3] ), .B(\wb_dat_reg[3] ), .S0(mcb_rd_empty), .Y(new_n392));
  MX2X1    g015(.A(new_n392), .B(\wb_dat_reg[3] ), .S0(new_n382), .Y(new_n393));
  MX2X1    g016(.A(new_n393), .B(\wb_dat_reg[3] ), .S0(rst), .Y(n512));
  MX2X1    g017(.A(\mcb_rd_data[4] ), .B(\wb_dat_reg[4] ), .S0(mcb_rd_empty), .Y(new_n395));
  MX2X1    g018(.A(new_n395), .B(\wb_dat_reg[4] ), .S0(new_n382), .Y(new_n396));
  MX2X1    g019(.A(new_n396), .B(\wb_dat_reg[4] ), .S0(rst), .Y(n517));
  MX2X1    g020(.A(\mcb_rd_data[5] ), .B(\wb_dat_reg[5] ), .S0(mcb_rd_empty), .Y(new_n398));
  MX2X1    g021(.A(new_n398), .B(\wb_dat_reg[5] ), .S0(new_n382), .Y(new_n399));
  MX2X1    g022(.A(new_n399), .B(\wb_dat_reg[5] ), .S0(rst), .Y(n522));
  MX2X1    g023(.A(\mcb_rd_data[6] ), .B(\wb_dat_reg[6] ), .S0(mcb_rd_empty), .Y(new_n401));
  MX2X1    g024(.A(new_n401), .B(\wb_dat_reg[6] ), .S0(new_n382), .Y(new_n402));
  MX2X1    g025(.A(new_n402), .B(\wb_dat_reg[6] ), .S0(rst), .Y(n527));
  MX2X1    g026(.A(\mcb_rd_data[7] ), .B(\wb_dat_reg[7] ), .S0(mcb_rd_empty), .Y(new_n404));
  MX2X1    g027(.A(new_n404), .B(\wb_dat_reg[7] ), .S0(new_n382), .Y(new_n405));
  MX2X1    g028(.A(new_n405), .B(\wb_dat_reg[7] ), .S0(rst), .Y(n532));
  MX2X1    g029(.A(\mcb_rd_data[8] ), .B(\wb_dat_reg[8] ), .S0(mcb_rd_empty), .Y(new_n407));
  MX2X1    g030(.A(new_n407), .B(\wb_dat_reg[8] ), .S0(new_n382), .Y(new_n408));
  MX2X1    g031(.A(new_n408), .B(\wb_dat_reg[8] ), .S0(rst), .Y(n537));
  MX2X1    g032(.A(\mcb_rd_data[9] ), .B(\wb_dat_reg[9] ), .S0(mcb_rd_empty), .Y(new_n410));
  MX2X1    g033(.A(new_n410), .B(\wb_dat_reg[9] ), .S0(new_n382), .Y(new_n411));
  MX2X1    g034(.A(new_n411), .B(\wb_dat_reg[9] ), .S0(rst), .Y(n542));
  MX2X1    g035(.A(\mcb_rd_data[10] ), .B(\wb_dat_reg[10] ), .S0(mcb_rd_empty), .Y(new_n413));
  MX2X1    g036(.A(new_n413), .B(\wb_dat_reg[10] ), .S0(new_n382), .Y(new_n414));
  MX2X1    g037(.A(new_n414), .B(\wb_dat_reg[10] ), .S0(rst), .Y(n547));
  MX2X1    g038(.A(\mcb_rd_data[11] ), .B(\wb_dat_reg[11] ), .S0(mcb_rd_empty), .Y(new_n416));
  MX2X1    g039(.A(new_n416), .B(\wb_dat_reg[11] ), .S0(new_n382), .Y(new_n417));
  MX2X1    g040(.A(new_n417), .B(\wb_dat_reg[11] ), .S0(rst), .Y(n552));
  MX2X1    g041(.A(\mcb_rd_data[12] ), .B(\wb_dat_reg[12] ), .S0(mcb_rd_empty), .Y(new_n419));
  MX2X1    g042(.A(new_n419), .B(\wb_dat_reg[12] ), .S0(new_n382), .Y(new_n420));
  MX2X1    g043(.A(new_n420), .B(\wb_dat_reg[12] ), .S0(rst), .Y(n557));
  MX2X1    g044(.A(\mcb_rd_data[13] ), .B(\wb_dat_reg[13] ), .S0(mcb_rd_empty), .Y(new_n422));
  MX2X1    g045(.A(new_n422), .B(\wb_dat_reg[13] ), .S0(new_n382), .Y(new_n423));
  MX2X1    g046(.A(new_n423), .B(\wb_dat_reg[13] ), .S0(rst), .Y(n562));
  MX2X1    g047(.A(\mcb_rd_data[14] ), .B(\wb_dat_reg[14] ), .S0(mcb_rd_empty), .Y(new_n425));
  MX2X1    g048(.A(new_n425), .B(\wb_dat_reg[14] ), .S0(new_n382), .Y(new_n426));
  MX2X1    g049(.A(new_n426), .B(\wb_dat_reg[14] ), .S0(rst), .Y(n567));
  MX2X1    g050(.A(\mcb_rd_data[15] ), .B(\wb_dat_reg[15] ), .S0(mcb_rd_empty), .Y(new_n428));
  MX2X1    g051(.A(new_n428), .B(\wb_dat_reg[15] ), .S0(new_n382), .Y(new_n429));
  MX2X1    g052(.A(new_n429), .B(\wb_dat_reg[15] ), .S0(rst), .Y(n572));
  MX2X1    g053(.A(\mcb_rd_data[16] ), .B(\wb_dat_reg[16] ), .S0(mcb_rd_empty), .Y(new_n431));
  MX2X1    g054(.A(new_n431), .B(\wb_dat_reg[16] ), .S0(new_n382), .Y(new_n432));
  MX2X1    g055(.A(new_n432), .B(\wb_dat_reg[16] ), .S0(rst), .Y(n577));
  MX2X1    g056(.A(\mcb_rd_data[17] ), .B(\wb_dat_reg[17] ), .S0(mcb_rd_empty), .Y(new_n434));
  MX2X1    g057(.A(new_n434), .B(\wb_dat_reg[17] ), .S0(new_n382), .Y(new_n435));
  MX2X1    g058(.A(new_n435), .B(\wb_dat_reg[17] ), .S0(rst), .Y(n582));
  MX2X1    g059(.A(\mcb_rd_data[18] ), .B(\wb_dat_reg[18] ), .S0(mcb_rd_empty), .Y(new_n437));
  MX2X1    g060(.A(new_n437), .B(\wb_dat_reg[18] ), .S0(new_n382), .Y(new_n438));
  MX2X1    g061(.A(new_n438), .B(\wb_dat_reg[18] ), .S0(rst), .Y(n587));
  MX2X1    g062(.A(\mcb_rd_data[19] ), .B(\wb_dat_reg[19] ), .S0(mcb_rd_empty), .Y(new_n440));
  MX2X1    g063(.A(new_n440), .B(\wb_dat_reg[19] ), .S0(new_n382), .Y(new_n441));
  MX2X1    g064(.A(new_n441), .B(\wb_dat_reg[19] ), .S0(rst), .Y(n592));
  MX2X1    g065(.A(\mcb_rd_data[20] ), .B(\wb_dat_reg[20] ), .S0(mcb_rd_empty), .Y(new_n443));
  MX2X1    g066(.A(new_n443), .B(\wb_dat_reg[20] ), .S0(new_n382), .Y(new_n444));
  MX2X1    g067(.A(new_n444), .B(\wb_dat_reg[20] ), .S0(rst), .Y(n597));
  MX2X1    g068(.A(\mcb_rd_data[21] ), .B(\wb_dat_reg[21] ), .S0(mcb_rd_empty), .Y(new_n446));
  MX2X1    g069(.A(new_n446), .B(\wb_dat_reg[21] ), .S0(new_n382), .Y(new_n447));
  MX2X1    g070(.A(new_n447), .B(\wb_dat_reg[21] ), .S0(rst), .Y(n602));
  MX2X1    g071(.A(\mcb_rd_data[22] ), .B(\wb_dat_reg[22] ), .S0(mcb_rd_empty), .Y(new_n449));
  MX2X1    g072(.A(new_n449), .B(\wb_dat_reg[22] ), .S0(new_n382), .Y(new_n450));
  MX2X1    g073(.A(new_n450), .B(\wb_dat_reg[22] ), .S0(rst), .Y(n607));
  MX2X1    g074(.A(\mcb_rd_data[23] ), .B(\wb_dat_reg[23] ), .S0(mcb_rd_empty), .Y(new_n452));
  MX2X1    g075(.A(new_n452), .B(\wb_dat_reg[23] ), .S0(new_n382), .Y(new_n453));
  MX2X1    g076(.A(new_n453), .B(\wb_dat_reg[23] ), .S0(rst), .Y(n612));
  MX2X1    g077(.A(\mcb_rd_data[24] ), .B(\wb_dat_reg[24] ), .S0(mcb_rd_empty), .Y(new_n455));
  MX2X1    g078(.A(new_n455), .B(\wb_dat_reg[24] ), .S0(new_n382), .Y(new_n456));
  MX2X1    g079(.A(new_n456), .B(\wb_dat_reg[24] ), .S0(rst), .Y(n617));
  MX2X1    g080(.A(\mcb_rd_data[25] ), .B(\wb_dat_reg[25] ), .S0(mcb_rd_empty), .Y(new_n458));
  MX2X1    g081(.A(new_n458), .B(\wb_dat_reg[25] ), .S0(new_n382), .Y(new_n459));
  MX2X1    g082(.A(new_n459), .B(\wb_dat_reg[25] ), .S0(rst), .Y(n622));
  MX2X1    g083(.A(\mcb_rd_data[26] ), .B(\wb_dat_reg[26] ), .S0(mcb_rd_empty), .Y(new_n461));
  MX2X1    g084(.A(new_n461), .B(\wb_dat_reg[26] ), .S0(new_n382), .Y(new_n462));
  MX2X1    g085(.A(new_n462), .B(\wb_dat_reg[26] ), .S0(rst), .Y(n627));
  MX2X1    g086(.A(\mcb_rd_data[27] ), .B(\wb_dat_reg[27] ), .S0(mcb_rd_empty), .Y(new_n464));
  MX2X1    g087(.A(new_n464), .B(\wb_dat_reg[27] ), .S0(new_n382), .Y(new_n465));
  MX2X1    g088(.A(new_n465), .B(\wb_dat_reg[27] ), .S0(rst), .Y(n632));
  MX2X1    g089(.A(\mcb_rd_data[28] ), .B(\wb_dat_reg[28] ), .S0(mcb_rd_empty), .Y(new_n467));
  MX2X1    g090(.A(new_n467), .B(\wb_dat_reg[28] ), .S0(new_n382), .Y(new_n468));
  MX2X1    g091(.A(new_n468), .B(\wb_dat_reg[28] ), .S0(rst), .Y(n637));
  MX2X1    g092(.A(\mcb_rd_data[29] ), .B(\wb_dat_reg[29] ), .S0(mcb_rd_empty), .Y(new_n470));
  MX2X1    g093(.A(new_n470), .B(\wb_dat_reg[29] ), .S0(new_n382), .Y(new_n471));
  MX2X1    g094(.A(new_n471), .B(\wb_dat_reg[29] ), .S0(rst), .Y(n642));
  MX2X1    g095(.A(\mcb_rd_data[30] ), .B(\wb_dat_reg[30] ), .S0(mcb_rd_empty), .Y(new_n473));
  MX2X1    g096(.A(new_n473), .B(\wb_dat_reg[30] ), .S0(new_n382), .Y(new_n474));
  MX2X1    g097(.A(new_n474), .B(\wb_dat_reg[30] ), .S0(rst), .Y(n647));
  MX2X1    g098(.A(\mcb_rd_data[31] ), .B(\wb_dat_reg[31] ), .S0(mcb_rd_empty), .Y(new_n476));
  MX2X1    g099(.A(new_n476), .B(\wb_dat_reg[31] ), .S0(new_n382), .Y(new_n477));
  MX2X1    g100(.A(new_n477), .B(\wb_dat_reg[31] ), .S0(rst), .Y(n652));
  INVX1    g101(.A(wb_we_i), .Y(new_n479));
  OR4X1    g102(.A(new_n378), .B(wb_ack_reg), .C(cycle_reg), .D(new_n479), .Y(new_n480));
  OAI21X1  g103(.A0(new_n382), .A1(mcb_rd_empty), .B0(new_n480), .Y(new_n481));
  MX2X1    g104(.A(new_n481), .B(wb_ack_reg), .S0(rst), .Y(n657));
  NOR4X1   g105(.A(new_n378), .B(wb_ack_reg), .C(cycle_reg), .D(rst), .Y(n662));
  NOR2X1   g106(.A(new_n379), .B(rst), .Y(n667));
  NOR2X1   g107(.A(new_n480), .B(rst), .Y(n672));
  OR2X1    g108(.A(new_n378), .B(wb_ack_reg), .Y(new_n486));
  INVX1    g109(.A(\wb_sel_i[0] ), .Y(new_n487));
  MX2X1    g110(.A(\mcb_wr_mask_reg[0] ), .B(new_n487), .S0(wb_we_i), .Y(new_n488));
  MX2X1    g111(.A(new_n488), .B(\mcb_wr_mask_reg[0] ), .S0(new_n486), .Y(new_n489));
  MX2X1    g112(.A(new_n489), .B(\mcb_wr_mask_reg[0] ), .S0(cycle_reg), .Y(new_n490));
  MX2X1    g113(.A(new_n490), .B(\mcb_wr_mask_reg[0] ), .S0(rst), .Y(n677));
  INVX1    g114(.A(\wb_sel_i[1] ), .Y(new_n492_1));
  MX2X1    g115(.A(\mcb_wr_mask_reg[1] ), .B(new_n492_1), .S0(wb_we_i), .Y(new_n493));
  MX2X1    g116(.A(new_n493), .B(\mcb_wr_mask_reg[1] ), .S0(new_n486), .Y(new_n494));
  MX2X1    g117(.A(new_n494), .B(\mcb_wr_mask_reg[1] ), .S0(cycle_reg), .Y(new_n495));
  MX2X1    g118(.A(new_n495), .B(\mcb_wr_mask_reg[1] ), .S0(rst), .Y(n682));
  INVX1    g119(.A(\wb_sel_i[2] ), .Y(new_n497_1));
  MX2X1    g120(.A(\mcb_wr_mask_reg[2] ), .B(new_n497_1), .S0(wb_we_i), .Y(new_n498));
  MX2X1    g121(.A(new_n498), .B(\mcb_wr_mask_reg[2] ), .S0(new_n486), .Y(new_n499));
  MX2X1    g122(.A(new_n499), .B(\mcb_wr_mask_reg[2] ), .S0(cycle_reg), .Y(new_n500));
  MX2X1    g123(.A(new_n500), .B(\mcb_wr_mask_reg[2] ), .S0(rst), .Y(n687));
  INVX1    g124(.A(\wb_sel_i[3] ), .Y(new_n502_1));
  MX2X1    g125(.A(\mcb_wr_mask_reg[3] ), .B(new_n502_1), .S0(wb_we_i), .Y(new_n503));
  MX2X1    g126(.A(new_n503), .B(\mcb_wr_mask_reg[3] ), .S0(new_n486), .Y(new_n504));
  MX2X1    g127(.A(new_n504), .B(\mcb_wr_mask_reg[3] ), .S0(cycle_reg), .Y(new_n505));
  MX2X1    g128(.A(new_n505), .B(\mcb_wr_mask_reg[3] ), .S0(rst), .Y(n692));
  ZERO     g129(.Y(\mcb_cmd_instr[1] ));
  ZERO     g130(.Y(\mcb_cmd_instr[2] ));
  ZERO     g131(.Y(\mcb_cmd_bl[0] ));
  ZERO     g132(.Y(\mcb_cmd_bl[1] ));
  ZERO     g133(.Y(\mcb_cmd_bl[2] ));
  ZERO     g134(.Y(\mcb_cmd_bl[3] ));
  ZERO     g135(.Y(\mcb_cmd_bl[4] ));
  ZERO     g136(.Y(\mcb_cmd_bl[5] ));
  ONE      g137(.Y(mcb_rd_en));
  BUFX1    g138(.A(\wb_dat_reg[0] ), .Y(\wb_dat_o[0] ));
  BUFX1    g139(.A(\wb_dat_reg[1] ), .Y(\wb_dat_o[1] ));
  BUFX1    g140(.A(\wb_dat_reg[2] ), .Y(\wb_dat_o[2] ));
  BUFX1    g141(.A(\wb_dat_reg[3] ), .Y(\wb_dat_o[3] ));
  BUFX1    g142(.A(\wb_dat_reg[4] ), .Y(\wb_dat_o[4] ));
  BUFX1    g143(.A(\wb_dat_reg[5] ), .Y(\wb_dat_o[5] ));
  BUFX1    g144(.A(\wb_dat_reg[6] ), .Y(\wb_dat_o[6] ));
  BUFX1    g145(.A(\wb_dat_reg[7] ), .Y(\wb_dat_o[7] ));
  BUFX1    g146(.A(\wb_dat_reg[8] ), .Y(\wb_dat_o[8] ));
  BUFX1    g147(.A(\wb_dat_reg[9] ), .Y(\wb_dat_o[9] ));
  BUFX1    g148(.A(\wb_dat_reg[10] ), .Y(\wb_dat_o[10] ));
  BUFX1    g149(.A(\wb_dat_reg[11] ), .Y(\wb_dat_o[11] ));
  BUFX1    g150(.A(\wb_dat_reg[12] ), .Y(\wb_dat_o[12] ));
  BUFX1    g151(.A(\wb_dat_reg[13] ), .Y(\wb_dat_o[13] ));
  BUFX1    g152(.A(\wb_dat_reg[14] ), .Y(\wb_dat_o[14] ));
  BUFX1    g153(.A(\wb_dat_reg[15] ), .Y(\wb_dat_o[15] ));
  BUFX1    g154(.A(\wb_dat_reg[16] ), .Y(\wb_dat_o[16] ));
  BUFX1    g155(.A(\wb_dat_reg[17] ), .Y(\wb_dat_o[17] ));
  BUFX1    g156(.A(\wb_dat_reg[18] ), .Y(\wb_dat_o[18] ));
  BUFX1    g157(.A(\wb_dat_reg[19] ), .Y(\wb_dat_o[19] ));
  BUFX1    g158(.A(\wb_dat_reg[20] ), .Y(\wb_dat_o[20] ));
  BUFX1    g159(.A(\wb_dat_reg[21] ), .Y(\wb_dat_o[21] ));
  BUFX1    g160(.A(\wb_dat_reg[22] ), .Y(\wb_dat_o[22] ));
  BUFX1    g161(.A(\wb_dat_reg[23] ), .Y(\wb_dat_o[23] ));
  BUFX1    g162(.A(\wb_dat_reg[24] ), .Y(\wb_dat_o[24] ));
  BUFX1    g163(.A(\wb_dat_reg[25] ), .Y(\wb_dat_o[25] ));
  BUFX1    g164(.A(\wb_dat_reg[26] ), .Y(\wb_dat_o[26] ));
  BUFX1    g165(.A(\wb_dat_reg[27] ), .Y(\wb_dat_o[27] ));
  BUFX1    g166(.A(\wb_dat_reg[28] ), .Y(\wb_dat_o[28] ));
  BUFX1    g167(.A(\wb_dat_reg[29] ), .Y(\wb_dat_o[29] ));
  BUFX1    g168(.A(\wb_dat_reg[30] ), .Y(\wb_dat_o[30] ));
  BUFX1    g169(.A(\wb_dat_reg[31] ), .Y(\wb_dat_o[31] ));
  BUFX1    g170(.A(wb_ack_reg), .Y(wb_ack_o));
  BUFX1    g171(.A(clk), .Y(mcb_cmd_clk));
  BUFX1    g172(.A(mcb_cmd_en_reg), .Y(mcb_cmd_en));
  BUFX1    g173(.A(mcb_cmd_instr_reg), .Y(\mcb_cmd_instr[0] ));
  BUFX1    g174(.A(\wb_adr_i[0] ), .Y(\mcb_cmd_byte_addr[0] ));
  BUFX1    g175(.A(\wb_adr_i[1] ), .Y(\mcb_cmd_byte_addr[1] ));
  BUFX1    g176(.A(\wb_adr_i[2] ), .Y(\mcb_cmd_byte_addr[2] ));
  BUFX1    g177(.A(\wb_adr_i[3] ), .Y(\mcb_cmd_byte_addr[3] ));
  BUFX1    g178(.A(\wb_adr_i[4] ), .Y(\mcb_cmd_byte_addr[4] ));
  BUFX1    g179(.A(\wb_adr_i[5] ), .Y(\mcb_cmd_byte_addr[5] ));
  BUFX1    g180(.A(\wb_adr_i[6] ), .Y(\mcb_cmd_byte_addr[6] ));
  BUFX1    g181(.A(\wb_adr_i[7] ), .Y(\mcb_cmd_byte_addr[7] ));
  BUFX1    g182(.A(\wb_adr_i[8] ), .Y(\mcb_cmd_byte_addr[8] ));
  BUFX1    g183(.A(\wb_adr_i[9] ), .Y(\mcb_cmd_byte_addr[9] ));
  BUFX1    g184(.A(\wb_adr_i[10] ), .Y(\mcb_cmd_byte_addr[10] ));
  BUFX1    g185(.A(\wb_adr_i[11] ), .Y(\mcb_cmd_byte_addr[11] ));
  BUFX1    g186(.A(\wb_adr_i[12] ), .Y(\mcb_cmd_byte_addr[12] ));
  BUFX1    g187(.A(\wb_adr_i[13] ), .Y(\mcb_cmd_byte_addr[13] ));
  BUFX1    g188(.A(\wb_adr_i[14] ), .Y(\mcb_cmd_byte_addr[14] ));
  BUFX1    g189(.A(\wb_adr_i[15] ), .Y(\mcb_cmd_byte_addr[15] ));
  BUFX1    g190(.A(\wb_adr_i[16] ), .Y(\mcb_cmd_byte_addr[16] ));
  BUFX1    g191(.A(\wb_adr_i[17] ), .Y(\mcb_cmd_byte_addr[17] ));
  BUFX1    g192(.A(\wb_adr_i[18] ), .Y(\mcb_cmd_byte_addr[18] ));
  BUFX1    g193(.A(\wb_adr_i[19] ), .Y(\mcb_cmd_byte_addr[19] ));
  BUFX1    g194(.A(\wb_adr_i[20] ), .Y(\mcb_cmd_byte_addr[20] ));
  BUFX1    g195(.A(\wb_adr_i[21] ), .Y(\mcb_cmd_byte_addr[21] ));
  BUFX1    g196(.A(\wb_adr_i[22] ), .Y(\mcb_cmd_byte_addr[22] ));
  BUFX1    g197(.A(\wb_adr_i[23] ), .Y(\mcb_cmd_byte_addr[23] ));
  BUFX1    g198(.A(\wb_adr_i[24] ), .Y(\mcb_cmd_byte_addr[24] ));
  BUFX1    g199(.A(\wb_adr_i[25] ), .Y(\mcb_cmd_byte_addr[25] ));
  BUFX1    g200(.A(\wb_adr_i[26] ), .Y(\mcb_cmd_byte_addr[26] ));
  BUFX1    g201(.A(\wb_adr_i[27] ), .Y(\mcb_cmd_byte_addr[27] ));
  BUFX1    g202(.A(\wb_adr_i[28] ), .Y(\mcb_cmd_byte_addr[28] ));
  BUFX1    g203(.A(\wb_adr_i[29] ), .Y(\mcb_cmd_byte_addr[29] ));
  BUFX1    g204(.A(\wb_adr_i[30] ), .Y(\mcb_cmd_byte_addr[30] ));
  BUFX1    g205(.A(\wb_adr_i[31] ), .Y(\mcb_cmd_byte_addr[31] ));
  BUFX1    g206(.A(clk), .Y(mcb_wr_clk));
  BUFX1    g207(.A(mcb_wr_en_reg), .Y(mcb_wr_en));
  BUFX1    g208(.A(\mcb_wr_mask_reg[0] ), .Y(\mcb_wr_mask[0] ));
  BUFX1    g209(.A(\mcb_wr_mask_reg[1] ), .Y(\mcb_wr_mask[1] ));
  BUFX1    g210(.A(\mcb_wr_mask_reg[2] ), .Y(\mcb_wr_mask[2] ));
  BUFX1    g211(.A(\mcb_wr_mask_reg[3] ), .Y(\mcb_wr_mask[3] ));
  BUFX1    g212(.A(\wb_dat_i[0] ), .Y(\mcb_wr_data[0] ));
  BUFX1    g213(.A(\wb_dat_i[1] ), .Y(\mcb_wr_data[1] ));
  BUFX1    g214(.A(\wb_dat_i[2] ), .Y(\mcb_wr_data[2] ));
  BUFX1    g215(.A(\wb_dat_i[3] ), .Y(\mcb_wr_data[3] ));
  BUFX1    g216(.A(\wb_dat_i[4] ), .Y(\mcb_wr_data[4] ));
  BUFX1    g217(.A(\wb_dat_i[5] ), .Y(\mcb_wr_data[5] ));
  BUFX1    g218(.A(\wb_dat_i[6] ), .Y(\mcb_wr_data[6] ));
  BUFX1    g219(.A(\wb_dat_i[7] ), .Y(\mcb_wr_data[7] ));
  BUFX1    g220(.A(\wb_dat_i[8] ), .Y(\mcb_wr_data[8] ));
  BUFX1    g221(.A(\wb_dat_i[9] ), .Y(\mcb_wr_data[9] ));
  BUFX1    g222(.A(\wb_dat_i[10] ), .Y(\mcb_wr_data[10] ));
  BUFX1    g223(.A(\wb_dat_i[11] ), .Y(\mcb_wr_data[11] ));
  BUFX1    g224(.A(\wb_dat_i[12] ), .Y(\mcb_wr_data[12] ));
  BUFX1    g225(.A(\wb_dat_i[13] ), .Y(\mcb_wr_data[13] ));
  BUFX1    g226(.A(\wb_dat_i[14] ), .Y(\mcb_wr_data[14] ));
  BUFX1    g227(.A(\wb_dat_i[15] ), .Y(\mcb_wr_data[15] ));
  BUFX1    g228(.A(\wb_dat_i[16] ), .Y(\mcb_wr_data[16] ));
  BUFX1    g229(.A(\wb_dat_i[17] ), .Y(\mcb_wr_data[17] ));
  BUFX1    g230(.A(\wb_dat_i[18] ), .Y(\mcb_wr_data[18] ));
  BUFX1    g231(.A(\wb_dat_i[19] ), .Y(\mcb_wr_data[19] ));
  BUFX1    g232(.A(\wb_dat_i[20] ), .Y(\mcb_wr_data[20] ));
  BUFX1    g233(.A(\wb_dat_i[21] ), .Y(\mcb_wr_data[21] ));
  BUFX1    g234(.A(\wb_dat_i[22] ), .Y(\mcb_wr_data[22] ));
  BUFX1    g235(.A(\wb_dat_i[23] ), .Y(\mcb_wr_data[23] ));
  BUFX1    g236(.A(\wb_dat_i[24] ), .Y(\mcb_wr_data[24] ));
  BUFX1    g237(.A(\wb_dat_i[25] ), .Y(\mcb_wr_data[25] ));
  BUFX1    g238(.A(\wb_dat_i[26] ), .Y(\mcb_wr_data[26] ));
  BUFX1    g239(.A(\wb_dat_i[27] ), .Y(\mcb_wr_data[27] ));
  BUFX1    g240(.A(\wb_dat_i[28] ), .Y(\mcb_wr_data[28] ));
  BUFX1    g241(.A(\wb_dat_i[29] ), .Y(\mcb_wr_data[29] ));
  BUFX1    g242(.A(\wb_dat_i[30] ), .Y(\mcb_wr_data[30] ));
  BUFX1    g243(.A(\wb_dat_i[31] ), .Y(\mcb_wr_data[31] ));
  BUFX1    g244(.A(clk), .Y(mcb_rd_clk));
  always @ (posedge clock) begin
    cycle_reg <= n492;
    \wb_dat_reg[0]  <= n497;
    \wb_dat_reg[1]  <= n502;
    \wb_dat_reg[2]  <= n507;
    \wb_dat_reg[3]  <= n512;
    \wb_dat_reg[4]  <= n517;
    \wb_dat_reg[5]  <= n522;
    \wb_dat_reg[6]  <= n527;
    \wb_dat_reg[7]  <= n532;
    \wb_dat_reg[8]  <= n537;
    \wb_dat_reg[9]  <= n542;
    \wb_dat_reg[10]  <= n547;
    \wb_dat_reg[11]  <= n552;
    \wb_dat_reg[12]  <= n557;
    \wb_dat_reg[13]  <= n562;
    \wb_dat_reg[14]  <= n567;
    \wb_dat_reg[15]  <= n572;
    \wb_dat_reg[16]  <= n577;
    \wb_dat_reg[17]  <= n582;
    \wb_dat_reg[18]  <= n587;
    \wb_dat_reg[19]  <= n592;
    \wb_dat_reg[20]  <= n597;
    \wb_dat_reg[21]  <= n602;
    \wb_dat_reg[22]  <= n607;
    \wb_dat_reg[23]  <= n612;
    \wb_dat_reg[24]  <= n617;
    \wb_dat_reg[25]  <= n622;
    \wb_dat_reg[26]  <= n627;
    \wb_dat_reg[27]  <= n632;
    \wb_dat_reg[28]  <= n637;
    \wb_dat_reg[29]  <= n642;
    \wb_dat_reg[30]  <= n647;
    \wb_dat_reg[31]  <= n652;
    wb_ack_reg <= n657;
    mcb_cmd_en_reg <= n662;
    mcb_cmd_instr_reg <= n667;
    mcb_wr_en_reg <= n672;
    \mcb_wr_mask_reg[0]  <= n677;
    \mcb_wr_mask_reg[1]  <= n682;
    \mcb_wr_mask_reg[2]  <= n687;
    \mcb_wr_mask_reg[3]  <= n692;
  end
  initial begin
    cycle_reg <= 1'b0;
    \wb_dat_reg[0]  <= 1'b0;
    \wb_dat_reg[1]  <= 1'b0;
    \wb_dat_reg[2]  <= 1'b0;
    \wb_dat_reg[3]  <= 1'b0;
    \wb_dat_reg[4]  <= 1'b0;
    \wb_dat_reg[5]  <= 1'b0;
    \wb_dat_reg[6]  <= 1'b0;
    \wb_dat_reg[7]  <= 1'b0;
    \wb_dat_reg[8]  <= 1'b0;
    \wb_dat_reg[9]  <= 1'b0;
    \wb_dat_reg[10]  <= 1'b0;
    \wb_dat_reg[11]  <= 1'b0;
    \wb_dat_reg[12]  <= 1'b0;
    \wb_dat_reg[13]  <= 1'b0;
    \wb_dat_reg[14]  <= 1'b0;
    \wb_dat_reg[15]  <= 1'b0;
    \wb_dat_reg[16]  <= 1'b0;
    \wb_dat_reg[17]  <= 1'b0;
    \wb_dat_reg[18]  <= 1'b0;
    \wb_dat_reg[19]  <= 1'b0;
    \wb_dat_reg[20]  <= 1'b0;
    \wb_dat_reg[21]  <= 1'b0;
    \wb_dat_reg[22]  <= 1'b0;
    \wb_dat_reg[23]  <= 1'b0;
    \wb_dat_reg[24]  <= 1'b0;
    \wb_dat_reg[25]  <= 1'b0;
    \wb_dat_reg[26]  <= 1'b0;
    \wb_dat_reg[27]  <= 1'b0;
    \wb_dat_reg[28]  <= 1'b0;
    \wb_dat_reg[29]  <= 1'b0;
    \wb_dat_reg[30]  <= 1'b0;
    \wb_dat_reg[31]  <= 1'b0;
    wb_ack_reg <= 1'b0;
    mcb_cmd_en_reg <= 1'b0;
    mcb_cmd_instr_reg <= 1'b0;
    mcb_wr_en_reg <= 1'b0;
    \mcb_wr_mask_reg[0]  <= 1'b0;
    \mcb_wr_mask_reg[1]  <= 1'b0;
    \mcb_wr_mask_reg[2]  <= 1'b0;
    \mcb_wr_mask_reg[3]  <= 1'b0;
  end
endmodule


