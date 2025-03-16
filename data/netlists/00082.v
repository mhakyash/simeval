// Benchmark "forwarding_unit" written by ABC on Wed Jun 26 15:21:59 2024

module forwarding_unit ( 
    \data_alu_a_in[0] , \data_alu_a_in[1] , \data_alu_a_in[2] ,
    \data_alu_a_in[3] , \data_alu_a_in[4] , \data_alu_a_in[5] ,
    \data_alu_a_in[6] , \data_alu_a_in[7] , \data_alu_a_in[8] ,
    \data_alu_a_in[9] , \data_alu_a_in[10] , \data_alu_a_in[11] ,
    \data_alu_a_in[12] , \data_alu_a_in[13] , \data_alu_a_in[14] ,
    \data_alu_a_in[15] , \data_alu_a_in[16] , \data_alu_a_in[17] ,
    \data_alu_a_in[18] , \data_alu_a_in[19] , \data_alu_a_in[20] ,
    \data_alu_a_in[21] , \data_alu_a_in[22] , \data_alu_a_in[23] ,
    \data_alu_a_in[24] , \data_alu_a_in[25] , \data_alu_a_in[26] ,
    \data_alu_a_in[27] , \data_alu_a_in[28] , \data_alu_a_in[29] ,
    \data_alu_a_in[30] , \data_alu_a_in[31] , \data_alu_b_in[0] ,
    \data_alu_b_in[1] , \data_alu_b_in[2] , \data_alu_b_in[3] ,
    \data_alu_b_in[4] , \data_alu_b_in[5] , \data_alu_b_in[6] ,
    \data_alu_b_in[7] , \data_alu_b_in[8] , \data_alu_b_in[9] ,
    \data_alu_b_in[10] , \data_alu_b_in[11] , \data_alu_b_in[12] ,
    \data_alu_b_in[13] , \data_alu_b_in[14] , \data_alu_b_in[15] ,
    \data_alu_b_in[16] , \data_alu_b_in[17] , \data_alu_b_in[18] ,
    \data_alu_b_in[19] , \data_alu_b_in[20] , \data_alu_b_in[21] ,
    \data_alu_b_in[22] , \data_alu_b_in[23] , \data_alu_b_in[24] ,
    \data_alu_b_in[25] , \data_alu_b_in[26] , \data_alu_b_in[27] ,
    \data_alu_b_in[28] , \data_alu_b_in[29] , \data_alu_b_in[30] ,
    \data_alu_b_in[31] , \addr_alu_a_in[0] , \addr_alu_a_in[1] ,
    \addr_alu_a_in[2] , \addr_alu_a_in[3] , \addr_alu_a_in[4] ,
    \addr_alu_b_in[0] , \addr_alu_b_in[1] , \addr_alu_b_in[2] ,
    \addr_alu_b_in[3] , \addr_alu_b_in[4] , \ex_mem_reg_a_data_in[0] ,
    \ex_mem_reg_a_data_in[1] , \ex_mem_reg_a_data_in[2] ,
    \ex_mem_reg_a_data_in[3] , \ex_mem_reg_a_data_in[4] ,
    \ex_mem_reg_a_data_in[5] , \ex_mem_reg_a_data_in[6] ,
    \ex_mem_reg_a_data_in[7] , \ex_mem_reg_a_data_in[8] ,
    \ex_mem_reg_a_data_in[9] , \ex_mem_reg_a_data_in[10] ,
    \ex_mem_reg_a_data_in[11] , \ex_mem_reg_a_data_in[12] ,
    \ex_mem_reg_a_data_in[13] , \ex_mem_reg_a_data_in[14] ,
    \ex_mem_reg_a_data_in[15] , \ex_mem_reg_a_data_in[16] ,
    \ex_mem_reg_a_data_in[17] , \ex_mem_reg_a_data_in[18] ,
    \ex_mem_reg_a_data_in[19] , \ex_mem_reg_a_data_in[20] ,
    \ex_mem_reg_a_data_in[21] , \ex_mem_reg_a_data_in[22] ,
    \ex_mem_reg_a_data_in[23] , \ex_mem_reg_a_data_in[24] ,
    \ex_mem_reg_a_data_in[25] , \ex_mem_reg_a_data_in[26] ,
    \ex_mem_reg_a_data_in[27] , \ex_mem_reg_a_data_in[28] ,
    \ex_mem_reg_a_data_in[29] , \ex_mem_reg_a_data_in[30] ,
    \ex_mem_reg_a_data_in[31] , \ex_mem_reg_b_data_in[0] ,
    \ex_mem_reg_b_data_in[1] , \ex_mem_reg_b_data_in[2] ,
    \ex_mem_reg_b_data_in[3] , \ex_mem_reg_b_data_in[4] ,
    \ex_mem_reg_b_data_in[5] , \ex_mem_reg_b_data_in[6] ,
    \ex_mem_reg_b_data_in[7] , \ex_mem_reg_b_data_in[8] ,
    \ex_mem_reg_b_data_in[9] , \ex_mem_reg_b_data_in[10] ,
    \ex_mem_reg_b_data_in[11] , \ex_mem_reg_b_data_in[12] ,
    \ex_mem_reg_b_data_in[13] , \ex_mem_reg_b_data_in[14] ,
    \ex_mem_reg_b_data_in[15] , \ex_mem_reg_b_data_in[16] ,
    \ex_mem_reg_b_data_in[17] , \ex_mem_reg_b_data_in[18] ,
    \ex_mem_reg_b_data_in[19] , \ex_mem_reg_b_data_in[20] ,
    \ex_mem_reg_b_data_in[21] , \ex_mem_reg_b_data_in[22] ,
    \ex_mem_reg_b_data_in[23] , \ex_mem_reg_b_data_in[24] ,
    \ex_mem_reg_b_data_in[25] , \ex_mem_reg_b_data_in[26] ,
    \ex_mem_reg_b_data_in[27] , \ex_mem_reg_b_data_in[28] ,
    \ex_mem_reg_b_data_in[29] , \ex_mem_reg_b_data_in[30] ,
    \ex_mem_reg_b_data_in[31] , \ex_mem_reg_a_addr_in[0] ,
    \ex_mem_reg_a_addr_in[1] , \ex_mem_reg_a_addr_in[2] ,
    \ex_mem_reg_a_addr_in[3] , \ex_mem_reg_a_addr_in[4] ,
    \ex_mem_reg_b_addr_in[0] , \ex_mem_reg_b_addr_in[1] ,
    \ex_mem_reg_b_addr_in[2] , \ex_mem_reg_b_addr_in[3] ,
    \ex_mem_reg_b_addr_in[4] , ex_mem_reg_a_wr_ena_in,
    ex_mem_reg_b_wr_ena_in, \wb_reg_a_data_in[0] , \wb_reg_a_data_in[1] ,
    \wb_reg_a_data_in[2] , \wb_reg_a_data_in[3] , \wb_reg_a_data_in[4] ,
    \wb_reg_a_data_in[5] , \wb_reg_a_data_in[6] , \wb_reg_a_data_in[7] ,
    \wb_reg_a_data_in[8] , \wb_reg_a_data_in[9] , \wb_reg_a_data_in[10] ,
    \wb_reg_a_data_in[11] , \wb_reg_a_data_in[12] , \wb_reg_a_data_in[13] ,
    \wb_reg_a_data_in[14] , \wb_reg_a_data_in[15] , \wb_reg_a_data_in[16] ,
    \wb_reg_a_data_in[17] , \wb_reg_a_data_in[18] , \wb_reg_a_data_in[19] ,
    \wb_reg_a_data_in[20] , \wb_reg_a_data_in[21] , \wb_reg_a_data_in[22] ,
    \wb_reg_a_data_in[23] , \wb_reg_a_data_in[24] , \wb_reg_a_data_in[25] ,
    \wb_reg_a_data_in[26] , \wb_reg_a_data_in[27] , \wb_reg_a_data_in[28] ,
    \wb_reg_a_data_in[29] , \wb_reg_a_data_in[30] , \wb_reg_a_data_in[31] ,
    \wb_reg_b_data_in[0] , \wb_reg_b_data_in[1] , \wb_reg_b_data_in[2] ,
    \wb_reg_b_data_in[3] , \wb_reg_b_data_in[4] , \wb_reg_b_data_in[5] ,
    \wb_reg_b_data_in[6] , \wb_reg_b_data_in[7] , \wb_reg_b_data_in[8] ,
    \wb_reg_b_data_in[9] , \wb_reg_b_data_in[10] , \wb_reg_b_data_in[11] ,
    \wb_reg_b_data_in[12] , \wb_reg_b_data_in[13] , \wb_reg_b_data_in[14] ,
    \wb_reg_b_data_in[15] , \wb_reg_b_data_in[16] , \wb_reg_b_data_in[17] ,
    \wb_reg_b_data_in[18] , \wb_reg_b_data_in[19] , \wb_reg_b_data_in[20] ,
    \wb_reg_b_data_in[21] , \wb_reg_b_data_in[22] , \wb_reg_b_data_in[23] ,
    \wb_reg_b_data_in[24] , \wb_reg_b_data_in[25] , \wb_reg_b_data_in[26] ,
    \wb_reg_b_data_in[27] , \wb_reg_b_data_in[28] , \wb_reg_b_data_in[29] ,
    \wb_reg_b_data_in[30] , \wb_reg_b_data_in[31] , \wb_reg_a_addr_in[0] ,
    \wb_reg_a_addr_in[1] , \wb_reg_a_addr_in[2] , \wb_reg_a_addr_in[3] ,
    \wb_reg_a_addr_in[4] , \wb_reg_b_addr_in[0] , \wb_reg_b_addr_in[1] ,
    \wb_reg_b_addr_in[2] , \wb_reg_b_addr_in[3] , \wb_reg_b_addr_in[4] ,
    wb_reg_a_wr_ena_in, wb_reg_b_wr_ena_in,
    \alu_a_mux_sel_out[0] , \alu_a_mux_sel_out[1] , \alu_a_mux_sel_out[2] ,
    \alu_a_mux_sel_out[3] , \alu_a_mux_sel_out[4] , \alu_a_mux_sel_out[5] ,
    \alu_a_mux_sel_out[6] , \alu_a_mux_sel_out[7] , \alu_a_mux_sel_out[8] ,
    \alu_a_mux_sel_out[9] , \alu_a_mux_sel_out[10] ,
    \alu_a_mux_sel_out[11] , \alu_a_mux_sel_out[12] ,
    \alu_a_mux_sel_out[13] , \alu_a_mux_sel_out[14] ,
    \alu_a_mux_sel_out[15] , \alu_a_mux_sel_out[16] ,
    \alu_a_mux_sel_out[17] , \alu_a_mux_sel_out[18] ,
    \alu_a_mux_sel_out[19] , \alu_a_mux_sel_out[20] ,
    \alu_a_mux_sel_out[21] , \alu_a_mux_sel_out[22] ,
    \alu_a_mux_sel_out[23] , \alu_a_mux_sel_out[24] ,
    \alu_a_mux_sel_out[25] , \alu_a_mux_sel_out[26] ,
    \alu_a_mux_sel_out[27] , \alu_a_mux_sel_out[28] ,
    \alu_a_mux_sel_out[29] , \alu_a_mux_sel_out[30] ,
    \alu_a_mux_sel_out[31] , \alu_b_mux_sel_out[0] ,
    \alu_b_mux_sel_out[1] , \alu_b_mux_sel_out[2] , \alu_b_mux_sel_out[3] ,
    \alu_b_mux_sel_out[4] , \alu_b_mux_sel_out[5] , \alu_b_mux_sel_out[6] ,
    \alu_b_mux_sel_out[7] , \alu_b_mux_sel_out[8] , \alu_b_mux_sel_out[9] ,
    \alu_b_mux_sel_out[10] , \alu_b_mux_sel_out[11] ,
    \alu_b_mux_sel_out[12] , \alu_b_mux_sel_out[13] ,
    \alu_b_mux_sel_out[14] , \alu_b_mux_sel_out[15] ,
    \alu_b_mux_sel_out[16] , \alu_b_mux_sel_out[17] ,
    \alu_b_mux_sel_out[18] , \alu_b_mux_sel_out[19] ,
    \alu_b_mux_sel_out[20] , \alu_b_mux_sel_out[21] ,
    \alu_b_mux_sel_out[22] , \alu_b_mux_sel_out[23] ,
    \alu_b_mux_sel_out[24] , \alu_b_mux_sel_out[25] ,
    \alu_b_mux_sel_out[26] , \alu_b_mux_sel_out[27] ,
    \alu_b_mux_sel_out[28] , \alu_b_mux_sel_out[29] ,
    \alu_b_mux_sel_out[30] , \alu_b_mux_sel_out[31]   );
  input  \data_alu_a_in[0] , \data_alu_a_in[1] , \data_alu_a_in[2] ,
    \data_alu_a_in[3] , \data_alu_a_in[4] , \data_alu_a_in[5] ,
    \data_alu_a_in[6] , \data_alu_a_in[7] , \data_alu_a_in[8] ,
    \data_alu_a_in[9] , \data_alu_a_in[10] , \data_alu_a_in[11] ,
    \data_alu_a_in[12] , \data_alu_a_in[13] , \data_alu_a_in[14] ,
    \data_alu_a_in[15] , \data_alu_a_in[16] , \data_alu_a_in[17] ,
    \data_alu_a_in[18] , \data_alu_a_in[19] , \data_alu_a_in[20] ,
    \data_alu_a_in[21] , \data_alu_a_in[22] , \data_alu_a_in[23] ,
    \data_alu_a_in[24] , \data_alu_a_in[25] , \data_alu_a_in[26] ,
    \data_alu_a_in[27] , \data_alu_a_in[28] , \data_alu_a_in[29] ,
    \data_alu_a_in[30] , \data_alu_a_in[31] , \data_alu_b_in[0] ,
    \data_alu_b_in[1] , \data_alu_b_in[2] , \data_alu_b_in[3] ,
    \data_alu_b_in[4] , \data_alu_b_in[5] , \data_alu_b_in[6] ,
    \data_alu_b_in[7] , \data_alu_b_in[8] , \data_alu_b_in[9] ,
    \data_alu_b_in[10] , \data_alu_b_in[11] , \data_alu_b_in[12] ,
    \data_alu_b_in[13] , \data_alu_b_in[14] , \data_alu_b_in[15] ,
    \data_alu_b_in[16] , \data_alu_b_in[17] , \data_alu_b_in[18] ,
    \data_alu_b_in[19] , \data_alu_b_in[20] , \data_alu_b_in[21] ,
    \data_alu_b_in[22] , \data_alu_b_in[23] , \data_alu_b_in[24] ,
    \data_alu_b_in[25] , \data_alu_b_in[26] , \data_alu_b_in[27] ,
    \data_alu_b_in[28] , \data_alu_b_in[29] , \data_alu_b_in[30] ,
    \data_alu_b_in[31] , \addr_alu_a_in[0] , \addr_alu_a_in[1] ,
    \addr_alu_a_in[2] , \addr_alu_a_in[3] , \addr_alu_a_in[4] ,
    \addr_alu_b_in[0] , \addr_alu_b_in[1] , \addr_alu_b_in[2] ,
    \addr_alu_b_in[3] , \addr_alu_b_in[4] , \ex_mem_reg_a_data_in[0] ,
    \ex_mem_reg_a_data_in[1] , \ex_mem_reg_a_data_in[2] ,
    \ex_mem_reg_a_data_in[3] , \ex_mem_reg_a_data_in[4] ,
    \ex_mem_reg_a_data_in[5] , \ex_mem_reg_a_data_in[6] ,
    \ex_mem_reg_a_data_in[7] , \ex_mem_reg_a_data_in[8] ,
    \ex_mem_reg_a_data_in[9] , \ex_mem_reg_a_data_in[10] ,
    \ex_mem_reg_a_data_in[11] , \ex_mem_reg_a_data_in[12] ,
    \ex_mem_reg_a_data_in[13] , \ex_mem_reg_a_data_in[14] ,
    \ex_mem_reg_a_data_in[15] , \ex_mem_reg_a_data_in[16] ,
    \ex_mem_reg_a_data_in[17] , \ex_mem_reg_a_data_in[18] ,
    \ex_mem_reg_a_data_in[19] , \ex_mem_reg_a_data_in[20] ,
    \ex_mem_reg_a_data_in[21] , \ex_mem_reg_a_data_in[22] ,
    \ex_mem_reg_a_data_in[23] , \ex_mem_reg_a_data_in[24] ,
    \ex_mem_reg_a_data_in[25] , \ex_mem_reg_a_data_in[26] ,
    \ex_mem_reg_a_data_in[27] , \ex_mem_reg_a_data_in[28] ,
    \ex_mem_reg_a_data_in[29] , \ex_mem_reg_a_data_in[30] ,
    \ex_mem_reg_a_data_in[31] , \ex_mem_reg_b_data_in[0] ,
    \ex_mem_reg_b_data_in[1] , \ex_mem_reg_b_data_in[2] ,
    \ex_mem_reg_b_data_in[3] , \ex_mem_reg_b_data_in[4] ,
    \ex_mem_reg_b_data_in[5] , \ex_mem_reg_b_data_in[6] ,
    \ex_mem_reg_b_data_in[7] , \ex_mem_reg_b_data_in[8] ,
    \ex_mem_reg_b_data_in[9] , \ex_mem_reg_b_data_in[10] ,
    \ex_mem_reg_b_data_in[11] , \ex_mem_reg_b_data_in[12] ,
    \ex_mem_reg_b_data_in[13] , \ex_mem_reg_b_data_in[14] ,
    \ex_mem_reg_b_data_in[15] , \ex_mem_reg_b_data_in[16] ,
    \ex_mem_reg_b_data_in[17] , \ex_mem_reg_b_data_in[18] ,
    \ex_mem_reg_b_data_in[19] , \ex_mem_reg_b_data_in[20] ,
    \ex_mem_reg_b_data_in[21] , \ex_mem_reg_b_data_in[22] ,
    \ex_mem_reg_b_data_in[23] , \ex_mem_reg_b_data_in[24] ,
    \ex_mem_reg_b_data_in[25] , \ex_mem_reg_b_data_in[26] ,
    \ex_mem_reg_b_data_in[27] , \ex_mem_reg_b_data_in[28] ,
    \ex_mem_reg_b_data_in[29] , \ex_mem_reg_b_data_in[30] ,
    \ex_mem_reg_b_data_in[31] , \ex_mem_reg_a_addr_in[0] ,
    \ex_mem_reg_a_addr_in[1] , \ex_mem_reg_a_addr_in[2] ,
    \ex_mem_reg_a_addr_in[3] , \ex_mem_reg_a_addr_in[4] ,
    \ex_mem_reg_b_addr_in[0] , \ex_mem_reg_b_addr_in[1] ,
    \ex_mem_reg_b_addr_in[2] , \ex_mem_reg_b_addr_in[3] ,
    \ex_mem_reg_b_addr_in[4] , ex_mem_reg_a_wr_ena_in,
    ex_mem_reg_b_wr_ena_in, \wb_reg_a_data_in[0] , \wb_reg_a_data_in[1] ,
    \wb_reg_a_data_in[2] , \wb_reg_a_data_in[3] , \wb_reg_a_data_in[4] ,
    \wb_reg_a_data_in[5] , \wb_reg_a_data_in[6] , \wb_reg_a_data_in[7] ,
    \wb_reg_a_data_in[8] , \wb_reg_a_data_in[9] , \wb_reg_a_data_in[10] ,
    \wb_reg_a_data_in[11] , \wb_reg_a_data_in[12] , \wb_reg_a_data_in[13] ,
    \wb_reg_a_data_in[14] , \wb_reg_a_data_in[15] , \wb_reg_a_data_in[16] ,
    \wb_reg_a_data_in[17] , \wb_reg_a_data_in[18] , \wb_reg_a_data_in[19] ,
    \wb_reg_a_data_in[20] , \wb_reg_a_data_in[21] , \wb_reg_a_data_in[22] ,
    \wb_reg_a_data_in[23] , \wb_reg_a_data_in[24] , \wb_reg_a_data_in[25] ,
    \wb_reg_a_data_in[26] , \wb_reg_a_data_in[27] , \wb_reg_a_data_in[28] ,
    \wb_reg_a_data_in[29] , \wb_reg_a_data_in[30] , \wb_reg_a_data_in[31] ,
    \wb_reg_b_data_in[0] , \wb_reg_b_data_in[1] , \wb_reg_b_data_in[2] ,
    \wb_reg_b_data_in[3] , \wb_reg_b_data_in[4] , \wb_reg_b_data_in[5] ,
    \wb_reg_b_data_in[6] , \wb_reg_b_data_in[7] , \wb_reg_b_data_in[8] ,
    \wb_reg_b_data_in[9] , \wb_reg_b_data_in[10] , \wb_reg_b_data_in[11] ,
    \wb_reg_b_data_in[12] , \wb_reg_b_data_in[13] , \wb_reg_b_data_in[14] ,
    \wb_reg_b_data_in[15] , \wb_reg_b_data_in[16] , \wb_reg_b_data_in[17] ,
    \wb_reg_b_data_in[18] , \wb_reg_b_data_in[19] , \wb_reg_b_data_in[20] ,
    \wb_reg_b_data_in[21] , \wb_reg_b_data_in[22] , \wb_reg_b_data_in[23] ,
    \wb_reg_b_data_in[24] , \wb_reg_b_data_in[25] , \wb_reg_b_data_in[26] ,
    \wb_reg_b_data_in[27] , \wb_reg_b_data_in[28] , \wb_reg_b_data_in[29] ,
    \wb_reg_b_data_in[30] , \wb_reg_b_data_in[31] , \wb_reg_a_addr_in[0] ,
    \wb_reg_a_addr_in[1] , \wb_reg_a_addr_in[2] , \wb_reg_a_addr_in[3] ,
    \wb_reg_a_addr_in[4] , \wb_reg_b_addr_in[0] , \wb_reg_b_addr_in[1] ,
    \wb_reg_b_addr_in[2] , \wb_reg_b_addr_in[3] , \wb_reg_b_addr_in[4] ,
    wb_reg_a_wr_ena_in, wb_reg_b_wr_ena_in;
  output \alu_a_mux_sel_out[0] , \alu_a_mux_sel_out[1] ,
    \alu_a_mux_sel_out[2] , \alu_a_mux_sel_out[3] , \alu_a_mux_sel_out[4] ,
    \alu_a_mux_sel_out[5] , \alu_a_mux_sel_out[6] , \alu_a_mux_sel_out[7] ,
    \alu_a_mux_sel_out[8] , \alu_a_mux_sel_out[9] ,
    \alu_a_mux_sel_out[10] , \alu_a_mux_sel_out[11] ,
    \alu_a_mux_sel_out[12] , \alu_a_mux_sel_out[13] ,
    \alu_a_mux_sel_out[14] , \alu_a_mux_sel_out[15] ,
    \alu_a_mux_sel_out[16] , \alu_a_mux_sel_out[17] ,
    \alu_a_mux_sel_out[18] , \alu_a_mux_sel_out[19] ,
    \alu_a_mux_sel_out[20] , \alu_a_mux_sel_out[21] ,
    \alu_a_mux_sel_out[22] , \alu_a_mux_sel_out[23] ,
    \alu_a_mux_sel_out[24] , \alu_a_mux_sel_out[25] ,
    \alu_a_mux_sel_out[26] , \alu_a_mux_sel_out[27] ,
    \alu_a_mux_sel_out[28] , \alu_a_mux_sel_out[29] ,
    \alu_a_mux_sel_out[30] , \alu_a_mux_sel_out[31] ,
    \alu_b_mux_sel_out[0] , \alu_b_mux_sel_out[1] , \alu_b_mux_sel_out[2] ,
    \alu_b_mux_sel_out[3] , \alu_b_mux_sel_out[4] , \alu_b_mux_sel_out[5] ,
    \alu_b_mux_sel_out[6] , \alu_b_mux_sel_out[7] , \alu_b_mux_sel_out[8] ,
    \alu_b_mux_sel_out[9] , \alu_b_mux_sel_out[10] ,
    \alu_b_mux_sel_out[11] , \alu_b_mux_sel_out[12] ,
    \alu_b_mux_sel_out[13] , \alu_b_mux_sel_out[14] ,
    \alu_b_mux_sel_out[15] , \alu_b_mux_sel_out[16] ,
    \alu_b_mux_sel_out[17] , \alu_b_mux_sel_out[18] ,
    \alu_b_mux_sel_out[19] , \alu_b_mux_sel_out[20] ,
    \alu_b_mux_sel_out[21] , \alu_b_mux_sel_out[22] ,
    \alu_b_mux_sel_out[23] , \alu_b_mux_sel_out[24] ,
    \alu_b_mux_sel_out[25] , \alu_b_mux_sel_out[26] ,
    \alu_b_mux_sel_out[27] , \alu_b_mux_sel_out[28] ,
    \alu_b_mux_sel_out[29] , \alu_b_mux_sel_out[30] ,
    \alu_b_mux_sel_out[31] ;
  wire new_n291, new_n292, new_n293, new_n294, new_n295, new_n296, new_n297,
    new_n298, new_n299, new_n300, new_n301, new_n302, new_n303, new_n304,
    new_n305, new_n306, new_n307, new_n308, new_n309, new_n310, new_n311,
    new_n312, new_n313, new_n314, new_n315, new_n316, new_n317, new_n318,
    new_n319, new_n320, new_n321, new_n322, new_n323, new_n324, new_n325,
    new_n326, new_n327, new_n328, new_n329, new_n330, new_n331, new_n332,
    new_n333, new_n334, new_n335, new_n336, new_n337, new_n338, new_n339,
    new_n340, new_n341, new_n342, new_n343, new_n344, new_n345, new_n346,
    new_n348, new_n349, new_n350, new_n352, new_n353, new_n354, new_n356,
    new_n357, new_n358, new_n360, new_n361, new_n362, new_n364, new_n365,
    new_n366, new_n368, new_n369, new_n370, new_n372, new_n373, new_n374,
    new_n376, new_n377, new_n378, new_n380, new_n381, new_n382, new_n384,
    new_n385, new_n386, new_n388, new_n389, new_n390, new_n392, new_n393,
    new_n394, new_n396, new_n397, new_n398, new_n400, new_n401, new_n402,
    new_n404, new_n405, new_n406, new_n408, new_n409, new_n410, new_n412,
    new_n413, new_n414, new_n416, new_n417, new_n418, new_n420, new_n421,
    new_n422, new_n424, new_n425, new_n426, new_n428, new_n429, new_n430,
    new_n432, new_n433, new_n434, new_n436, new_n437, new_n438, new_n440,
    new_n441, new_n442, new_n444, new_n445, new_n446, new_n448, new_n449,
    new_n450, new_n452, new_n453, new_n454, new_n456, new_n457, new_n458,
    new_n460, new_n461, new_n462, new_n464, new_n465, new_n466, new_n468,
    new_n469, new_n470, new_n472, new_n473, new_n474, new_n475, new_n476,
    new_n477, new_n478, new_n479, new_n480, new_n481, new_n482, new_n483,
    new_n484, new_n485, new_n486, new_n487, new_n488, new_n489, new_n490,
    new_n491, new_n492, new_n493, new_n494, new_n495, new_n496, new_n497,
    new_n498, new_n499, new_n500, new_n501, new_n502, new_n503, new_n504,
    new_n505, new_n506, new_n507, new_n508, new_n509, new_n510, new_n511,
    new_n513, new_n514, new_n515, new_n517, new_n518, new_n519, new_n521,
    new_n522, new_n523, new_n525, new_n526, new_n527, new_n529, new_n530,
    new_n531, new_n533, new_n534, new_n535, new_n537, new_n538, new_n539,
    new_n541, new_n542, new_n543, new_n545, new_n546, new_n547, new_n549,
    new_n550, new_n551, new_n553, new_n554, new_n555, new_n557, new_n558,
    new_n559, new_n561, new_n562, new_n563, new_n565, new_n566, new_n567,
    new_n569, new_n570, new_n571, new_n573, new_n574, new_n575, new_n577,
    new_n578, new_n579, new_n581, new_n582, new_n583, new_n585, new_n586,
    new_n587, new_n589, new_n590, new_n591, new_n593, new_n594, new_n595,
    new_n597, new_n598, new_n599, new_n601, new_n602, new_n603, new_n605,
    new_n606, new_n607, new_n609, new_n610, new_n611, new_n613, new_n614,
    new_n615, new_n617, new_n618, new_n619, new_n621, new_n622, new_n623,
    new_n625, new_n626, new_n627, new_n629, new_n630, new_n631, new_n633,
    new_n634, new_n635;
  INVX1    g000(.A(\wb_reg_b_addr_in[4] ), .Y(new_n291));
  INVX1    g001(.A(\addr_alu_a_in[3] ), .Y(new_n292));
  AOI22X1  g002(.A0(new_n291), .A1(\addr_alu_a_in[4] ), .B0(\wb_reg_b_addr_in[3] ), .B1(new_n292), .Y(new_n293));
  OAI21X1  g003(.A0(new_n291), .A1(\addr_alu_a_in[4] ), .B0(new_n293), .Y(new_n294));
  INVX1    g004(.A(\addr_alu_a_in[2] ), .Y(new_n295));
  INVX1    g005(.A(\wb_reg_b_addr_in[1] ), .Y(new_n296));
  OAI22X1  g006(.A0(\wb_reg_b_addr_in[2] ), .A1(new_n295), .B0(new_n296), .B1(\addr_alu_a_in[1] ), .Y(new_n297));
  INVX1    g007(.A(\wb_reg_b_addr_in[2] ), .Y(new_n298));
  OAI22X1  g008(.A0(\wb_reg_b_addr_in[3] ), .A1(new_n292), .B0(new_n298), .B1(\addr_alu_a_in[2] ), .Y(new_n299));
  INVX1    g009(.A(\addr_alu_a_in[0] ), .Y(new_n300));
  OAI21X1  g010(.A0(\wb_reg_b_addr_in[0] ), .A1(new_n300), .B0(wb_reg_b_wr_ena_in), .Y(new_n301));
  INVX1    g011(.A(\addr_alu_a_in[1] ), .Y(new_n302));
  INVX1    g012(.A(\wb_reg_b_addr_in[0] ), .Y(new_n303));
  OAI22X1  g013(.A0(\wb_reg_b_addr_in[1] ), .A1(new_n302), .B0(new_n303), .B1(\addr_alu_a_in[0] ), .Y(new_n304));
  OR4X1    g014(.A(new_n304), .B(new_n301), .C(new_n299), .D(new_n297), .Y(new_n305));
  OR2X1    g015(.A(new_n305), .B(new_n294), .Y(new_n306));
  MX2X1    g016(.A(\wb_reg_b_data_in[0] ), .B(\data_alu_a_in[0] ), .S0(new_n306), .Y(new_n307));
  INVX1    g017(.A(\addr_alu_a_in[4] ), .Y(new_n308));
  INVX1    g018(.A(\wb_reg_a_addr_in[3] ), .Y(new_n309));
  OAI22X1  g019(.A0(\wb_reg_a_addr_in[4] ), .A1(new_n308), .B0(new_n309), .B1(\addr_alu_a_in[3] ), .Y(new_n310));
  AOI21X1  g020(.A0(\wb_reg_a_addr_in[4] ), .A1(new_n308), .B0(new_n310), .Y(new_n311));
  INVX1    g021(.A(\wb_reg_a_addr_in[1] ), .Y(new_n312));
  OAI22X1  g022(.A0(\wb_reg_a_addr_in[2] ), .A1(new_n295), .B0(new_n312), .B1(\addr_alu_a_in[1] ), .Y(new_n313));
  INVX1    g023(.A(\wb_reg_a_addr_in[2] ), .Y(new_n314));
  OAI22X1  g024(.A0(\wb_reg_a_addr_in[3] ), .A1(new_n292), .B0(new_n314), .B1(\addr_alu_a_in[2] ), .Y(new_n315));
  OAI21X1  g025(.A0(\wb_reg_a_addr_in[0] ), .A1(new_n300), .B0(wb_reg_a_wr_ena_in), .Y(new_n316));
  INVX1    g026(.A(\wb_reg_a_addr_in[0] ), .Y(new_n317));
  OAI22X1  g027(.A0(\wb_reg_a_addr_in[1] ), .A1(new_n302), .B0(new_n317), .B1(\addr_alu_a_in[0] ), .Y(new_n318));
  NOR4X1   g028(.A(new_n318), .B(new_n316), .C(new_n315), .D(new_n313), .Y(new_n319));
  AND2X1   g029(.A(new_n319), .B(new_n311), .Y(new_n320));
  MX2X1    g030(.A(new_n307), .B(\wb_reg_a_data_in[0] ), .S0(new_n320), .Y(new_n321));
  INVX1    g031(.A(\ex_mem_reg_b_addr_in[3] ), .Y(new_n322));
  OAI22X1  g032(.A0(\ex_mem_reg_b_addr_in[4] ), .A1(new_n308), .B0(new_n322), .B1(\addr_alu_a_in[3] ), .Y(new_n323));
  AOI21X1  g033(.A0(\ex_mem_reg_b_addr_in[4] ), .A1(new_n308), .B0(new_n323), .Y(new_n324));
  INVX1    g034(.A(\ex_mem_reg_b_addr_in[1] ), .Y(new_n325));
  OAI22X1  g035(.A0(\ex_mem_reg_b_addr_in[2] ), .A1(new_n295), .B0(new_n325), .B1(\addr_alu_a_in[1] ), .Y(new_n326));
  INVX1    g036(.A(\ex_mem_reg_b_addr_in[2] ), .Y(new_n327));
  OAI22X1  g037(.A0(\ex_mem_reg_b_addr_in[3] ), .A1(new_n292), .B0(new_n327), .B1(\addr_alu_a_in[2] ), .Y(new_n328));
  OAI21X1  g038(.A0(\ex_mem_reg_b_addr_in[0] ), .A1(new_n300), .B0(ex_mem_reg_b_wr_ena_in), .Y(new_n329));
  INVX1    g039(.A(\ex_mem_reg_b_addr_in[0] ), .Y(new_n330));
  OAI22X1  g040(.A0(\ex_mem_reg_b_addr_in[1] ), .A1(new_n302), .B0(new_n330), .B1(\addr_alu_a_in[0] ), .Y(new_n331));
  NOR4X1   g041(.A(new_n331), .B(new_n329), .C(new_n328), .D(new_n326), .Y(new_n332));
  AND2X1   g042(.A(new_n332), .B(new_n324), .Y(new_n333));
  MX2X1    g043(.A(new_n321), .B(\ex_mem_reg_b_data_in[0] ), .S0(new_n333), .Y(new_n334));
  INVX1    g044(.A(\ex_mem_reg_a_addr_in[3] ), .Y(new_n335));
  OAI22X1  g045(.A0(\ex_mem_reg_a_addr_in[4] ), .A1(new_n308), .B0(new_n335), .B1(\addr_alu_a_in[3] ), .Y(new_n336));
  AOI21X1  g046(.A0(\ex_mem_reg_a_addr_in[4] ), .A1(new_n308), .B0(new_n336), .Y(new_n337));
  INVX1    g047(.A(\ex_mem_reg_a_addr_in[1] ), .Y(new_n338));
  OAI22X1  g048(.A0(\ex_mem_reg_a_addr_in[2] ), .A1(new_n295), .B0(new_n338), .B1(\addr_alu_a_in[1] ), .Y(new_n339));
  INVX1    g049(.A(\ex_mem_reg_a_addr_in[2] ), .Y(new_n340));
  OAI22X1  g050(.A0(\ex_mem_reg_a_addr_in[3] ), .A1(new_n292), .B0(new_n340), .B1(\addr_alu_a_in[2] ), .Y(new_n341));
  OAI21X1  g051(.A0(\ex_mem_reg_a_addr_in[0] ), .A1(new_n300), .B0(ex_mem_reg_a_wr_ena_in), .Y(new_n342));
  INVX1    g052(.A(\ex_mem_reg_a_addr_in[0] ), .Y(new_n343));
  OAI22X1  g053(.A0(\ex_mem_reg_a_addr_in[1] ), .A1(new_n302), .B0(new_n343), .B1(\addr_alu_a_in[0] ), .Y(new_n344));
  NOR4X1   g054(.A(new_n344), .B(new_n342), .C(new_n341), .D(new_n339), .Y(new_n345));
  AND2X1   g055(.A(new_n345), .B(new_n337), .Y(new_n346));
  MX2X1    g056(.A(new_n334), .B(\ex_mem_reg_a_data_in[0] ), .S0(new_n346), .Y(\alu_a_mux_sel_out[0] ));
  MX2X1    g057(.A(\wb_reg_b_data_in[1] ), .B(\data_alu_a_in[1] ), .S0(new_n306), .Y(new_n348));
  MX2X1    g058(.A(new_n348), .B(\wb_reg_a_data_in[1] ), .S0(new_n320), .Y(new_n349));
  MX2X1    g059(.A(new_n349), .B(\ex_mem_reg_b_data_in[1] ), .S0(new_n333), .Y(new_n350));
  MX2X1    g060(.A(new_n350), .B(\ex_mem_reg_a_data_in[1] ), .S0(new_n346), .Y(\alu_a_mux_sel_out[1] ));
  MX2X1    g061(.A(\wb_reg_b_data_in[2] ), .B(\data_alu_a_in[2] ), .S0(new_n306), .Y(new_n352));
  MX2X1    g062(.A(new_n352), .B(\wb_reg_a_data_in[2] ), .S0(new_n320), .Y(new_n353));
  MX2X1    g063(.A(new_n353), .B(\ex_mem_reg_b_data_in[2] ), .S0(new_n333), .Y(new_n354));
  MX2X1    g064(.A(new_n354), .B(\ex_mem_reg_a_data_in[2] ), .S0(new_n346), .Y(\alu_a_mux_sel_out[2] ));
  MX2X1    g065(.A(\wb_reg_b_data_in[3] ), .B(\data_alu_a_in[3] ), .S0(new_n306), .Y(new_n356));
  MX2X1    g066(.A(new_n356), .B(\wb_reg_a_data_in[3] ), .S0(new_n320), .Y(new_n357));
  MX2X1    g067(.A(new_n357), .B(\ex_mem_reg_b_data_in[3] ), .S0(new_n333), .Y(new_n358));
  MX2X1    g068(.A(new_n358), .B(\ex_mem_reg_a_data_in[3] ), .S0(new_n346), .Y(\alu_a_mux_sel_out[3] ));
  MX2X1    g069(.A(\wb_reg_b_data_in[4] ), .B(\data_alu_a_in[4] ), .S0(new_n306), .Y(new_n360));
  MX2X1    g070(.A(new_n360), .B(\wb_reg_a_data_in[4] ), .S0(new_n320), .Y(new_n361));
  MX2X1    g071(.A(new_n361), .B(\ex_mem_reg_b_data_in[4] ), .S0(new_n333), .Y(new_n362));
  MX2X1    g072(.A(new_n362), .B(\ex_mem_reg_a_data_in[4] ), .S0(new_n346), .Y(\alu_a_mux_sel_out[4] ));
  MX2X1    g073(.A(\wb_reg_b_data_in[5] ), .B(\data_alu_a_in[5] ), .S0(new_n306), .Y(new_n364));
  MX2X1    g074(.A(new_n364), .B(\wb_reg_a_data_in[5] ), .S0(new_n320), .Y(new_n365));
  MX2X1    g075(.A(new_n365), .B(\ex_mem_reg_b_data_in[5] ), .S0(new_n333), .Y(new_n366));
  MX2X1    g076(.A(new_n366), .B(\ex_mem_reg_a_data_in[5] ), .S0(new_n346), .Y(\alu_a_mux_sel_out[5] ));
  MX2X1    g077(.A(\wb_reg_b_data_in[6] ), .B(\data_alu_a_in[6] ), .S0(new_n306), .Y(new_n368));
  MX2X1    g078(.A(new_n368), .B(\wb_reg_a_data_in[6] ), .S0(new_n320), .Y(new_n369));
  MX2X1    g079(.A(new_n369), .B(\ex_mem_reg_b_data_in[6] ), .S0(new_n333), .Y(new_n370));
  MX2X1    g080(.A(new_n370), .B(\ex_mem_reg_a_data_in[6] ), .S0(new_n346), .Y(\alu_a_mux_sel_out[6] ));
  MX2X1    g081(.A(\wb_reg_b_data_in[7] ), .B(\data_alu_a_in[7] ), .S0(new_n306), .Y(new_n372));
  MX2X1    g082(.A(new_n372), .B(\wb_reg_a_data_in[7] ), .S0(new_n320), .Y(new_n373));
  MX2X1    g083(.A(new_n373), .B(\ex_mem_reg_b_data_in[7] ), .S0(new_n333), .Y(new_n374));
  MX2X1    g084(.A(new_n374), .B(\ex_mem_reg_a_data_in[7] ), .S0(new_n346), .Y(\alu_a_mux_sel_out[7] ));
  MX2X1    g085(.A(\wb_reg_b_data_in[8] ), .B(\data_alu_a_in[8] ), .S0(new_n306), .Y(new_n376));
  MX2X1    g086(.A(new_n376), .B(\wb_reg_a_data_in[8] ), .S0(new_n320), .Y(new_n377));
  MX2X1    g087(.A(new_n377), .B(\ex_mem_reg_b_data_in[8] ), .S0(new_n333), .Y(new_n378));
  MX2X1    g088(.A(new_n378), .B(\ex_mem_reg_a_data_in[8] ), .S0(new_n346), .Y(\alu_a_mux_sel_out[8] ));
  MX2X1    g089(.A(\wb_reg_b_data_in[9] ), .B(\data_alu_a_in[9] ), .S0(new_n306), .Y(new_n380));
  MX2X1    g090(.A(new_n380), .B(\wb_reg_a_data_in[9] ), .S0(new_n320), .Y(new_n381));
  MX2X1    g091(.A(new_n381), .B(\ex_mem_reg_b_data_in[9] ), .S0(new_n333), .Y(new_n382));
  MX2X1    g092(.A(new_n382), .B(\ex_mem_reg_a_data_in[9] ), .S0(new_n346), .Y(\alu_a_mux_sel_out[9] ));
  MX2X1    g093(.A(\wb_reg_b_data_in[10] ), .B(\data_alu_a_in[10] ), .S0(new_n306), .Y(new_n384));
  MX2X1    g094(.A(new_n384), .B(\wb_reg_a_data_in[10] ), .S0(new_n320), .Y(new_n385));
  MX2X1    g095(.A(new_n385), .B(\ex_mem_reg_b_data_in[10] ), .S0(new_n333), .Y(new_n386));
  MX2X1    g096(.A(new_n386), .B(\ex_mem_reg_a_data_in[10] ), .S0(new_n346), .Y(\alu_a_mux_sel_out[10] ));
  MX2X1    g097(.A(\wb_reg_b_data_in[11] ), .B(\data_alu_a_in[11] ), .S0(new_n306), .Y(new_n388));
  MX2X1    g098(.A(new_n388), .B(\wb_reg_a_data_in[11] ), .S0(new_n320), .Y(new_n389));
  MX2X1    g099(.A(new_n389), .B(\ex_mem_reg_b_data_in[11] ), .S0(new_n333), .Y(new_n390));
  MX2X1    g100(.A(new_n390), .B(\ex_mem_reg_a_data_in[11] ), .S0(new_n346), .Y(\alu_a_mux_sel_out[11] ));
  MX2X1    g101(.A(\wb_reg_b_data_in[12] ), .B(\data_alu_a_in[12] ), .S0(new_n306), .Y(new_n392));
  MX2X1    g102(.A(new_n392), .B(\wb_reg_a_data_in[12] ), .S0(new_n320), .Y(new_n393));
  MX2X1    g103(.A(new_n393), .B(\ex_mem_reg_b_data_in[12] ), .S0(new_n333), .Y(new_n394));
  MX2X1    g104(.A(new_n394), .B(\ex_mem_reg_a_data_in[12] ), .S0(new_n346), .Y(\alu_a_mux_sel_out[12] ));
  MX2X1    g105(.A(\wb_reg_b_data_in[13] ), .B(\data_alu_a_in[13] ), .S0(new_n306), .Y(new_n396));
  MX2X1    g106(.A(new_n396), .B(\wb_reg_a_data_in[13] ), .S0(new_n320), .Y(new_n397));
  MX2X1    g107(.A(new_n397), .B(\ex_mem_reg_b_data_in[13] ), .S0(new_n333), .Y(new_n398));
  MX2X1    g108(.A(new_n398), .B(\ex_mem_reg_a_data_in[13] ), .S0(new_n346), .Y(\alu_a_mux_sel_out[13] ));
  MX2X1    g109(.A(\wb_reg_b_data_in[14] ), .B(\data_alu_a_in[14] ), .S0(new_n306), .Y(new_n400));
  MX2X1    g110(.A(new_n400), .B(\wb_reg_a_data_in[14] ), .S0(new_n320), .Y(new_n401));
  MX2X1    g111(.A(new_n401), .B(\ex_mem_reg_b_data_in[14] ), .S0(new_n333), .Y(new_n402));
  MX2X1    g112(.A(new_n402), .B(\ex_mem_reg_a_data_in[14] ), .S0(new_n346), .Y(\alu_a_mux_sel_out[14] ));
  MX2X1    g113(.A(\wb_reg_b_data_in[15] ), .B(\data_alu_a_in[15] ), .S0(new_n306), .Y(new_n404));
  MX2X1    g114(.A(new_n404), .B(\wb_reg_a_data_in[15] ), .S0(new_n320), .Y(new_n405));
  MX2X1    g115(.A(new_n405), .B(\ex_mem_reg_b_data_in[15] ), .S0(new_n333), .Y(new_n406));
  MX2X1    g116(.A(new_n406), .B(\ex_mem_reg_a_data_in[15] ), .S0(new_n346), .Y(\alu_a_mux_sel_out[15] ));
  MX2X1    g117(.A(\wb_reg_b_data_in[16] ), .B(\data_alu_a_in[16] ), .S0(new_n306), .Y(new_n408));
  MX2X1    g118(.A(new_n408), .B(\wb_reg_a_data_in[16] ), .S0(new_n320), .Y(new_n409));
  MX2X1    g119(.A(new_n409), .B(\ex_mem_reg_b_data_in[16] ), .S0(new_n333), .Y(new_n410));
  MX2X1    g120(.A(new_n410), .B(\ex_mem_reg_a_data_in[16] ), .S0(new_n346), .Y(\alu_a_mux_sel_out[16] ));
  MX2X1    g121(.A(\wb_reg_b_data_in[17] ), .B(\data_alu_a_in[17] ), .S0(new_n306), .Y(new_n412));
  MX2X1    g122(.A(new_n412), .B(\wb_reg_a_data_in[17] ), .S0(new_n320), .Y(new_n413));
  MX2X1    g123(.A(new_n413), .B(\ex_mem_reg_b_data_in[17] ), .S0(new_n333), .Y(new_n414));
  MX2X1    g124(.A(new_n414), .B(\ex_mem_reg_a_data_in[17] ), .S0(new_n346), .Y(\alu_a_mux_sel_out[17] ));
  MX2X1    g125(.A(\wb_reg_b_data_in[18] ), .B(\data_alu_a_in[18] ), .S0(new_n306), .Y(new_n416));
  MX2X1    g126(.A(new_n416), .B(\wb_reg_a_data_in[18] ), .S0(new_n320), .Y(new_n417));
  MX2X1    g127(.A(new_n417), .B(\ex_mem_reg_b_data_in[18] ), .S0(new_n333), .Y(new_n418));
  MX2X1    g128(.A(new_n418), .B(\ex_mem_reg_a_data_in[18] ), .S0(new_n346), .Y(\alu_a_mux_sel_out[18] ));
  MX2X1    g129(.A(\wb_reg_b_data_in[19] ), .B(\data_alu_a_in[19] ), .S0(new_n306), .Y(new_n420));
  MX2X1    g130(.A(new_n420), .B(\wb_reg_a_data_in[19] ), .S0(new_n320), .Y(new_n421));
  MX2X1    g131(.A(new_n421), .B(\ex_mem_reg_b_data_in[19] ), .S0(new_n333), .Y(new_n422));
  MX2X1    g132(.A(new_n422), .B(\ex_mem_reg_a_data_in[19] ), .S0(new_n346), .Y(\alu_a_mux_sel_out[19] ));
  MX2X1    g133(.A(\wb_reg_b_data_in[20] ), .B(\data_alu_a_in[20] ), .S0(new_n306), .Y(new_n424));
  MX2X1    g134(.A(new_n424), .B(\wb_reg_a_data_in[20] ), .S0(new_n320), .Y(new_n425));
  MX2X1    g135(.A(new_n425), .B(\ex_mem_reg_b_data_in[20] ), .S0(new_n333), .Y(new_n426));
  MX2X1    g136(.A(new_n426), .B(\ex_mem_reg_a_data_in[20] ), .S0(new_n346), .Y(\alu_a_mux_sel_out[20] ));
  MX2X1    g137(.A(\wb_reg_b_data_in[21] ), .B(\data_alu_a_in[21] ), .S0(new_n306), .Y(new_n428));
  MX2X1    g138(.A(new_n428), .B(\wb_reg_a_data_in[21] ), .S0(new_n320), .Y(new_n429));
  MX2X1    g139(.A(new_n429), .B(\ex_mem_reg_b_data_in[21] ), .S0(new_n333), .Y(new_n430));
  MX2X1    g140(.A(new_n430), .B(\ex_mem_reg_a_data_in[21] ), .S0(new_n346), .Y(\alu_a_mux_sel_out[21] ));
  MX2X1    g141(.A(\wb_reg_b_data_in[22] ), .B(\data_alu_a_in[22] ), .S0(new_n306), .Y(new_n432));
  MX2X1    g142(.A(new_n432), .B(\wb_reg_a_data_in[22] ), .S0(new_n320), .Y(new_n433));
  MX2X1    g143(.A(new_n433), .B(\ex_mem_reg_b_data_in[22] ), .S0(new_n333), .Y(new_n434));
  MX2X1    g144(.A(new_n434), .B(\ex_mem_reg_a_data_in[22] ), .S0(new_n346), .Y(\alu_a_mux_sel_out[22] ));
  MX2X1    g145(.A(\wb_reg_b_data_in[23] ), .B(\data_alu_a_in[23] ), .S0(new_n306), .Y(new_n436));
  MX2X1    g146(.A(new_n436), .B(\wb_reg_a_data_in[23] ), .S0(new_n320), .Y(new_n437));
  MX2X1    g147(.A(new_n437), .B(\ex_mem_reg_b_data_in[23] ), .S0(new_n333), .Y(new_n438));
  MX2X1    g148(.A(new_n438), .B(\ex_mem_reg_a_data_in[23] ), .S0(new_n346), .Y(\alu_a_mux_sel_out[23] ));
  MX2X1    g149(.A(\wb_reg_b_data_in[24] ), .B(\data_alu_a_in[24] ), .S0(new_n306), .Y(new_n440));
  MX2X1    g150(.A(new_n440), .B(\wb_reg_a_data_in[24] ), .S0(new_n320), .Y(new_n441));
  MX2X1    g151(.A(new_n441), .B(\ex_mem_reg_b_data_in[24] ), .S0(new_n333), .Y(new_n442));
  MX2X1    g152(.A(new_n442), .B(\ex_mem_reg_a_data_in[24] ), .S0(new_n346), .Y(\alu_a_mux_sel_out[24] ));
  MX2X1    g153(.A(\wb_reg_b_data_in[25] ), .B(\data_alu_a_in[25] ), .S0(new_n306), .Y(new_n444));
  MX2X1    g154(.A(new_n444), .B(\wb_reg_a_data_in[25] ), .S0(new_n320), .Y(new_n445));
  MX2X1    g155(.A(new_n445), .B(\ex_mem_reg_b_data_in[25] ), .S0(new_n333), .Y(new_n446));
  MX2X1    g156(.A(new_n446), .B(\ex_mem_reg_a_data_in[25] ), .S0(new_n346), .Y(\alu_a_mux_sel_out[25] ));
  MX2X1    g157(.A(\wb_reg_b_data_in[26] ), .B(\data_alu_a_in[26] ), .S0(new_n306), .Y(new_n448));
  MX2X1    g158(.A(new_n448), .B(\wb_reg_a_data_in[26] ), .S0(new_n320), .Y(new_n449));
  MX2X1    g159(.A(new_n449), .B(\ex_mem_reg_b_data_in[26] ), .S0(new_n333), .Y(new_n450));
  MX2X1    g160(.A(new_n450), .B(\ex_mem_reg_a_data_in[26] ), .S0(new_n346), .Y(\alu_a_mux_sel_out[26] ));
  MX2X1    g161(.A(\wb_reg_b_data_in[27] ), .B(\data_alu_a_in[27] ), .S0(new_n306), .Y(new_n452));
  MX2X1    g162(.A(new_n452), .B(\wb_reg_a_data_in[27] ), .S0(new_n320), .Y(new_n453));
  MX2X1    g163(.A(new_n453), .B(\ex_mem_reg_b_data_in[27] ), .S0(new_n333), .Y(new_n454));
  MX2X1    g164(.A(new_n454), .B(\ex_mem_reg_a_data_in[27] ), .S0(new_n346), .Y(\alu_a_mux_sel_out[27] ));
  MX2X1    g165(.A(\wb_reg_b_data_in[28] ), .B(\data_alu_a_in[28] ), .S0(new_n306), .Y(new_n456));
  MX2X1    g166(.A(new_n456), .B(\wb_reg_a_data_in[28] ), .S0(new_n320), .Y(new_n457));
  MX2X1    g167(.A(new_n457), .B(\ex_mem_reg_b_data_in[28] ), .S0(new_n333), .Y(new_n458));
  MX2X1    g168(.A(new_n458), .B(\ex_mem_reg_a_data_in[28] ), .S0(new_n346), .Y(\alu_a_mux_sel_out[28] ));
  MX2X1    g169(.A(\wb_reg_b_data_in[29] ), .B(\data_alu_a_in[29] ), .S0(new_n306), .Y(new_n460));
  MX2X1    g170(.A(new_n460), .B(\wb_reg_a_data_in[29] ), .S0(new_n320), .Y(new_n461));
  MX2X1    g171(.A(new_n461), .B(\ex_mem_reg_b_data_in[29] ), .S0(new_n333), .Y(new_n462));
  MX2X1    g172(.A(new_n462), .B(\ex_mem_reg_a_data_in[29] ), .S0(new_n346), .Y(\alu_a_mux_sel_out[29] ));
  MX2X1    g173(.A(\wb_reg_b_data_in[30] ), .B(\data_alu_a_in[30] ), .S0(new_n306), .Y(new_n464));
  MX2X1    g174(.A(new_n464), .B(\wb_reg_a_data_in[30] ), .S0(new_n320), .Y(new_n465));
  MX2X1    g175(.A(new_n465), .B(\ex_mem_reg_b_data_in[30] ), .S0(new_n333), .Y(new_n466));
  MX2X1    g176(.A(new_n466), .B(\ex_mem_reg_a_data_in[30] ), .S0(new_n346), .Y(\alu_a_mux_sel_out[30] ));
  MX2X1    g177(.A(\wb_reg_b_data_in[31] ), .B(\data_alu_a_in[31] ), .S0(new_n306), .Y(new_n468));
  MX2X1    g178(.A(new_n468), .B(\wb_reg_a_data_in[31] ), .S0(new_n320), .Y(new_n469));
  MX2X1    g179(.A(new_n469), .B(\ex_mem_reg_b_data_in[31] ), .S0(new_n333), .Y(new_n470));
  MX2X1    g180(.A(new_n470), .B(\ex_mem_reg_a_data_in[31] ), .S0(new_n346), .Y(\alu_a_mux_sel_out[31] ));
  INVX1    g181(.A(\addr_alu_b_in[3] ), .Y(new_n472));
  AOI22X1  g182(.A0(new_n291), .A1(\addr_alu_b_in[4] ), .B0(\wb_reg_b_addr_in[3] ), .B1(new_n472), .Y(new_n473));
  OAI21X1  g183(.A0(new_n291), .A1(\addr_alu_b_in[4] ), .B0(new_n473), .Y(new_n474));
  INVX1    g184(.A(\addr_alu_b_in[2] ), .Y(new_n475));
  OAI22X1  g185(.A0(\wb_reg_b_addr_in[2] ), .A1(new_n475), .B0(new_n296), .B1(\addr_alu_b_in[1] ), .Y(new_n476));
  OAI22X1  g186(.A0(\wb_reg_b_addr_in[3] ), .A1(new_n472), .B0(new_n298), .B1(\addr_alu_b_in[2] ), .Y(new_n477));
  INVX1    g187(.A(\addr_alu_b_in[0] ), .Y(new_n478));
  OAI21X1  g188(.A0(\wb_reg_b_addr_in[0] ), .A1(new_n478), .B0(wb_reg_b_wr_ena_in), .Y(new_n479));
  INVX1    g189(.A(\addr_alu_b_in[1] ), .Y(new_n480));
  OAI22X1  g190(.A0(\wb_reg_b_addr_in[1] ), .A1(new_n480), .B0(new_n303), .B1(\addr_alu_b_in[0] ), .Y(new_n481));
  OR4X1    g191(.A(new_n481), .B(new_n479), .C(new_n477), .D(new_n476), .Y(new_n482));
  OR2X1    g192(.A(new_n482), .B(new_n474), .Y(new_n483));
  MX2X1    g193(.A(\wb_reg_b_data_in[0] ), .B(\data_alu_b_in[0] ), .S0(new_n483), .Y(new_n484));
  INVX1    g194(.A(\addr_alu_b_in[4] ), .Y(new_n485));
  OAI22X1  g195(.A0(\wb_reg_a_addr_in[4] ), .A1(new_n485), .B0(new_n309), .B1(\addr_alu_b_in[3] ), .Y(new_n486));
  AOI21X1  g196(.A0(\wb_reg_a_addr_in[4] ), .A1(new_n485), .B0(new_n486), .Y(new_n487));
  OAI22X1  g197(.A0(\wb_reg_a_addr_in[2] ), .A1(new_n475), .B0(new_n312), .B1(\addr_alu_b_in[1] ), .Y(new_n488));
  OAI22X1  g198(.A0(\wb_reg_a_addr_in[3] ), .A1(new_n472), .B0(new_n314), .B1(\addr_alu_b_in[2] ), .Y(new_n489));
  OAI21X1  g199(.A0(\wb_reg_a_addr_in[0] ), .A1(new_n478), .B0(wb_reg_a_wr_ena_in), .Y(new_n490));
  OAI22X1  g200(.A0(\wb_reg_a_addr_in[1] ), .A1(new_n480), .B0(new_n317), .B1(\addr_alu_b_in[0] ), .Y(new_n491));
  NOR4X1   g201(.A(new_n491), .B(new_n490), .C(new_n489), .D(new_n488), .Y(new_n492));
  AND2X1   g202(.A(new_n492), .B(new_n487), .Y(new_n493));
  MX2X1    g203(.A(new_n484), .B(\wb_reg_a_data_in[0] ), .S0(new_n493), .Y(new_n494));
  OAI22X1  g204(.A0(\ex_mem_reg_b_addr_in[4] ), .A1(new_n485), .B0(new_n322), .B1(\addr_alu_b_in[3] ), .Y(new_n495));
  AOI21X1  g205(.A0(\ex_mem_reg_b_addr_in[4] ), .A1(new_n485), .B0(new_n495), .Y(new_n496));
  OAI22X1  g206(.A0(\ex_mem_reg_b_addr_in[2] ), .A1(new_n475), .B0(new_n325), .B1(\addr_alu_b_in[1] ), .Y(new_n497));
  OAI22X1  g207(.A0(\ex_mem_reg_b_addr_in[3] ), .A1(new_n472), .B0(new_n327), .B1(\addr_alu_b_in[2] ), .Y(new_n498));
  OAI21X1  g208(.A0(\ex_mem_reg_b_addr_in[0] ), .A1(new_n478), .B0(ex_mem_reg_b_wr_ena_in), .Y(new_n499));
  OAI22X1  g209(.A0(\ex_mem_reg_b_addr_in[1] ), .A1(new_n480), .B0(new_n330), .B1(\addr_alu_b_in[0] ), .Y(new_n500));
  NOR4X1   g210(.A(new_n500), .B(new_n499), .C(new_n498), .D(new_n497), .Y(new_n501));
  AND2X1   g211(.A(new_n501), .B(new_n496), .Y(new_n502));
  MX2X1    g212(.A(new_n494), .B(\ex_mem_reg_b_data_in[0] ), .S0(new_n502), .Y(new_n503));
  OAI22X1  g213(.A0(\ex_mem_reg_a_addr_in[4] ), .A1(new_n485), .B0(new_n335), .B1(\addr_alu_b_in[3] ), .Y(new_n504));
  AOI21X1  g214(.A0(\ex_mem_reg_a_addr_in[4] ), .A1(new_n485), .B0(new_n504), .Y(new_n505));
  OAI22X1  g215(.A0(\ex_mem_reg_a_addr_in[2] ), .A1(new_n475), .B0(new_n338), .B1(\addr_alu_b_in[1] ), .Y(new_n506));
  OAI22X1  g216(.A0(\ex_mem_reg_a_addr_in[3] ), .A1(new_n472), .B0(new_n340), .B1(\addr_alu_b_in[2] ), .Y(new_n507));
  OAI21X1  g217(.A0(\ex_mem_reg_a_addr_in[0] ), .A1(new_n478), .B0(ex_mem_reg_a_wr_ena_in), .Y(new_n508));
  OAI22X1  g218(.A0(\ex_mem_reg_a_addr_in[1] ), .A1(new_n480), .B0(new_n343), .B1(\addr_alu_b_in[0] ), .Y(new_n509));
  NOR4X1   g219(.A(new_n509), .B(new_n508), .C(new_n507), .D(new_n506), .Y(new_n510));
  AND2X1   g220(.A(new_n510), .B(new_n505), .Y(new_n511));
  MX2X1    g221(.A(new_n503), .B(\ex_mem_reg_a_data_in[0] ), .S0(new_n511), .Y(\alu_b_mux_sel_out[0] ));
  MX2X1    g222(.A(\wb_reg_b_data_in[1] ), .B(\data_alu_b_in[1] ), .S0(new_n483), .Y(new_n513));
  MX2X1    g223(.A(new_n513), .B(\wb_reg_a_data_in[1] ), .S0(new_n493), .Y(new_n514));
  MX2X1    g224(.A(new_n514), .B(\ex_mem_reg_b_data_in[1] ), .S0(new_n502), .Y(new_n515));
  MX2X1    g225(.A(new_n515), .B(\ex_mem_reg_a_data_in[1] ), .S0(new_n511), .Y(\alu_b_mux_sel_out[1] ));
  MX2X1    g226(.A(\wb_reg_b_data_in[2] ), .B(\data_alu_b_in[2] ), .S0(new_n483), .Y(new_n517));
  MX2X1    g227(.A(new_n517), .B(\wb_reg_a_data_in[2] ), .S0(new_n493), .Y(new_n518));
  MX2X1    g228(.A(new_n518), .B(\ex_mem_reg_b_data_in[2] ), .S0(new_n502), .Y(new_n519));
  MX2X1    g229(.A(new_n519), .B(\ex_mem_reg_a_data_in[2] ), .S0(new_n511), .Y(\alu_b_mux_sel_out[2] ));
  MX2X1    g230(.A(\wb_reg_b_data_in[3] ), .B(\data_alu_b_in[3] ), .S0(new_n483), .Y(new_n521));
  MX2X1    g231(.A(new_n521), .B(\wb_reg_a_data_in[3] ), .S0(new_n493), .Y(new_n522));
  MX2X1    g232(.A(new_n522), .B(\ex_mem_reg_b_data_in[3] ), .S0(new_n502), .Y(new_n523));
  MX2X1    g233(.A(new_n523), .B(\ex_mem_reg_a_data_in[3] ), .S0(new_n511), .Y(\alu_b_mux_sel_out[3] ));
  MX2X1    g234(.A(\wb_reg_b_data_in[4] ), .B(\data_alu_b_in[4] ), .S0(new_n483), .Y(new_n525));
  MX2X1    g235(.A(new_n525), .B(\wb_reg_a_data_in[4] ), .S0(new_n493), .Y(new_n526));
  MX2X1    g236(.A(new_n526), .B(\ex_mem_reg_b_data_in[4] ), .S0(new_n502), .Y(new_n527));
  MX2X1    g237(.A(new_n527), .B(\ex_mem_reg_a_data_in[4] ), .S0(new_n511), .Y(\alu_b_mux_sel_out[4] ));
  MX2X1    g238(.A(\wb_reg_b_data_in[5] ), .B(\data_alu_b_in[5] ), .S0(new_n483), .Y(new_n529));
  MX2X1    g239(.A(new_n529), .B(\wb_reg_a_data_in[5] ), .S0(new_n493), .Y(new_n530));
  MX2X1    g240(.A(new_n530), .B(\ex_mem_reg_b_data_in[5] ), .S0(new_n502), .Y(new_n531));
  MX2X1    g241(.A(new_n531), .B(\ex_mem_reg_a_data_in[5] ), .S0(new_n511), .Y(\alu_b_mux_sel_out[5] ));
  MX2X1    g242(.A(\wb_reg_b_data_in[6] ), .B(\data_alu_b_in[6] ), .S0(new_n483), .Y(new_n533));
  MX2X1    g243(.A(new_n533), .B(\wb_reg_a_data_in[6] ), .S0(new_n493), .Y(new_n534));
  MX2X1    g244(.A(new_n534), .B(\ex_mem_reg_b_data_in[6] ), .S0(new_n502), .Y(new_n535));
  MX2X1    g245(.A(new_n535), .B(\ex_mem_reg_a_data_in[6] ), .S0(new_n511), .Y(\alu_b_mux_sel_out[6] ));
  MX2X1    g246(.A(\wb_reg_b_data_in[7] ), .B(\data_alu_b_in[7] ), .S0(new_n483), .Y(new_n537));
  MX2X1    g247(.A(new_n537), .B(\wb_reg_a_data_in[7] ), .S0(new_n493), .Y(new_n538));
  MX2X1    g248(.A(new_n538), .B(\ex_mem_reg_b_data_in[7] ), .S0(new_n502), .Y(new_n539));
  MX2X1    g249(.A(new_n539), .B(\ex_mem_reg_a_data_in[7] ), .S0(new_n511), .Y(\alu_b_mux_sel_out[7] ));
  MX2X1    g250(.A(\wb_reg_b_data_in[8] ), .B(\data_alu_b_in[8] ), .S0(new_n483), .Y(new_n541));
  MX2X1    g251(.A(new_n541), .B(\wb_reg_a_data_in[8] ), .S0(new_n493), .Y(new_n542));
  MX2X1    g252(.A(new_n542), .B(\ex_mem_reg_b_data_in[8] ), .S0(new_n502), .Y(new_n543));
  MX2X1    g253(.A(new_n543), .B(\ex_mem_reg_a_data_in[8] ), .S0(new_n511), .Y(\alu_b_mux_sel_out[8] ));
  MX2X1    g254(.A(\wb_reg_b_data_in[9] ), .B(\data_alu_b_in[9] ), .S0(new_n483), .Y(new_n545));
  MX2X1    g255(.A(new_n545), .B(\wb_reg_a_data_in[9] ), .S0(new_n493), .Y(new_n546));
  MX2X1    g256(.A(new_n546), .B(\ex_mem_reg_b_data_in[9] ), .S0(new_n502), .Y(new_n547));
  MX2X1    g257(.A(new_n547), .B(\ex_mem_reg_a_data_in[9] ), .S0(new_n511), .Y(\alu_b_mux_sel_out[9] ));
  MX2X1    g258(.A(\wb_reg_b_data_in[10] ), .B(\data_alu_b_in[10] ), .S0(new_n483), .Y(new_n549));
  MX2X1    g259(.A(new_n549), .B(\wb_reg_a_data_in[10] ), .S0(new_n493), .Y(new_n550));
  MX2X1    g260(.A(new_n550), .B(\ex_mem_reg_b_data_in[10] ), .S0(new_n502), .Y(new_n551));
  MX2X1    g261(.A(new_n551), .B(\ex_mem_reg_a_data_in[10] ), .S0(new_n511), .Y(\alu_b_mux_sel_out[10] ));
  MX2X1    g262(.A(\wb_reg_b_data_in[11] ), .B(\data_alu_b_in[11] ), .S0(new_n483), .Y(new_n553));
  MX2X1    g263(.A(new_n553), .B(\wb_reg_a_data_in[11] ), .S0(new_n493), .Y(new_n554));
  MX2X1    g264(.A(new_n554), .B(\ex_mem_reg_b_data_in[11] ), .S0(new_n502), .Y(new_n555));
  MX2X1    g265(.A(new_n555), .B(\ex_mem_reg_a_data_in[11] ), .S0(new_n511), .Y(\alu_b_mux_sel_out[11] ));
  MX2X1    g266(.A(\wb_reg_b_data_in[12] ), .B(\data_alu_b_in[12] ), .S0(new_n483), .Y(new_n557));
  MX2X1    g267(.A(new_n557), .B(\wb_reg_a_data_in[12] ), .S0(new_n493), .Y(new_n558));
  MX2X1    g268(.A(new_n558), .B(\ex_mem_reg_b_data_in[12] ), .S0(new_n502), .Y(new_n559));
  MX2X1    g269(.A(new_n559), .B(\ex_mem_reg_a_data_in[12] ), .S0(new_n511), .Y(\alu_b_mux_sel_out[12] ));
  MX2X1    g270(.A(\wb_reg_b_data_in[13] ), .B(\data_alu_b_in[13] ), .S0(new_n483), .Y(new_n561));
  MX2X1    g271(.A(new_n561), .B(\wb_reg_a_data_in[13] ), .S0(new_n493), .Y(new_n562));
  MX2X1    g272(.A(new_n562), .B(\ex_mem_reg_b_data_in[13] ), .S0(new_n502), .Y(new_n563));
  MX2X1    g273(.A(new_n563), .B(\ex_mem_reg_a_data_in[13] ), .S0(new_n511), .Y(\alu_b_mux_sel_out[13] ));
  MX2X1    g274(.A(\wb_reg_b_data_in[14] ), .B(\data_alu_b_in[14] ), .S0(new_n483), .Y(new_n565));
  MX2X1    g275(.A(new_n565), .B(\wb_reg_a_data_in[14] ), .S0(new_n493), .Y(new_n566));
  MX2X1    g276(.A(new_n566), .B(\ex_mem_reg_b_data_in[14] ), .S0(new_n502), .Y(new_n567));
  MX2X1    g277(.A(new_n567), .B(\ex_mem_reg_a_data_in[14] ), .S0(new_n511), .Y(\alu_b_mux_sel_out[14] ));
  MX2X1    g278(.A(\wb_reg_b_data_in[15] ), .B(\data_alu_b_in[15] ), .S0(new_n483), .Y(new_n569));
  MX2X1    g279(.A(new_n569), .B(\wb_reg_a_data_in[15] ), .S0(new_n493), .Y(new_n570));
  MX2X1    g280(.A(new_n570), .B(\ex_mem_reg_b_data_in[15] ), .S0(new_n502), .Y(new_n571));
  MX2X1    g281(.A(new_n571), .B(\ex_mem_reg_a_data_in[15] ), .S0(new_n511), .Y(\alu_b_mux_sel_out[15] ));
  MX2X1    g282(.A(\wb_reg_b_data_in[16] ), .B(\data_alu_b_in[16] ), .S0(new_n483), .Y(new_n573));
  MX2X1    g283(.A(new_n573), .B(\wb_reg_a_data_in[16] ), .S0(new_n493), .Y(new_n574));
  MX2X1    g284(.A(new_n574), .B(\ex_mem_reg_b_data_in[16] ), .S0(new_n502), .Y(new_n575));
  MX2X1    g285(.A(new_n575), .B(\ex_mem_reg_a_data_in[16] ), .S0(new_n511), .Y(\alu_b_mux_sel_out[16] ));
  MX2X1    g286(.A(\wb_reg_b_data_in[17] ), .B(\data_alu_b_in[17] ), .S0(new_n483), .Y(new_n577));
  MX2X1    g287(.A(new_n577), .B(\wb_reg_a_data_in[17] ), .S0(new_n493), .Y(new_n578));
  MX2X1    g288(.A(new_n578), .B(\ex_mem_reg_b_data_in[17] ), .S0(new_n502), .Y(new_n579));
  MX2X1    g289(.A(new_n579), .B(\ex_mem_reg_a_data_in[17] ), .S0(new_n511), .Y(\alu_b_mux_sel_out[17] ));
  MX2X1    g290(.A(\wb_reg_b_data_in[18] ), .B(\data_alu_b_in[18] ), .S0(new_n483), .Y(new_n581));
  MX2X1    g291(.A(new_n581), .B(\wb_reg_a_data_in[18] ), .S0(new_n493), .Y(new_n582));
  MX2X1    g292(.A(new_n582), .B(\ex_mem_reg_b_data_in[18] ), .S0(new_n502), .Y(new_n583));
  MX2X1    g293(.A(new_n583), .B(\ex_mem_reg_a_data_in[18] ), .S0(new_n511), .Y(\alu_b_mux_sel_out[18] ));
  MX2X1    g294(.A(\wb_reg_b_data_in[19] ), .B(\data_alu_b_in[19] ), .S0(new_n483), .Y(new_n585));
  MX2X1    g295(.A(new_n585), .B(\wb_reg_a_data_in[19] ), .S0(new_n493), .Y(new_n586));
  MX2X1    g296(.A(new_n586), .B(\ex_mem_reg_b_data_in[19] ), .S0(new_n502), .Y(new_n587));
  MX2X1    g297(.A(new_n587), .B(\ex_mem_reg_a_data_in[19] ), .S0(new_n511), .Y(\alu_b_mux_sel_out[19] ));
  MX2X1    g298(.A(\wb_reg_b_data_in[20] ), .B(\data_alu_b_in[20] ), .S0(new_n483), .Y(new_n589));
  MX2X1    g299(.A(new_n589), .B(\wb_reg_a_data_in[20] ), .S0(new_n493), .Y(new_n590));
  MX2X1    g300(.A(new_n590), .B(\ex_mem_reg_b_data_in[20] ), .S0(new_n502), .Y(new_n591));
  MX2X1    g301(.A(new_n591), .B(\ex_mem_reg_a_data_in[20] ), .S0(new_n511), .Y(\alu_b_mux_sel_out[20] ));
  MX2X1    g302(.A(\wb_reg_b_data_in[21] ), .B(\data_alu_b_in[21] ), .S0(new_n483), .Y(new_n593));
  MX2X1    g303(.A(new_n593), .B(\wb_reg_a_data_in[21] ), .S0(new_n493), .Y(new_n594));
  MX2X1    g304(.A(new_n594), .B(\ex_mem_reg_b_data_in[21] ), .S0(new_n502), .Y(new_n595));
  MX2X1    g305(.A(new_n595), .B(\ex_mem_reg_a_data_in[21] ), .S0(new_n511), .Y(\alu_b_mux_sel_out[21] ));
  MX2X1    g306(.A(\wb_reg_b_data_in[22] ), .B(\data_alu_b_in[22] ), .S0(new_n483), .Y(new_n597));
  MX2X1    g307(.A(new_n597), .B(\wb_reg_a_data_in[22] ), .S0(new_n493), .Y(new_n598));
  MX2X1    g308(.A(new_n598), .B(\ex_mem_reg_b_data_in[22] ), .S0(new_n502), .Y(new_n599));
  MX2X1    g309(.A(new_n599), .B(\ex_mem_reg_a_data_in[22] ), .S0(new_n511), .Y(\alu_b_mux_sel_out[22] ));
  MX2X1    g310(.A(\wb_reg_b_data_in[23] ), .B(\data_alu_b_in[23] ), .S0(new_n483), .Y(new_n601));
  MX2X1    g311(.A(new_n601), .B(\wb_reg_a_data_in[23] ), .S0(new_n493), .Y(new_n602));
  MX2X1    g312(.A(new_n602), .B(\ex_mem_reg_b_data_in[23] ), .S0(new_n502), .Y(new_n603));
  MX2X1    g313(.A(new_n603), .B(\ex_mem_reg_a_data_in[23] ), .S0(new_n511), .Y(\alu_b_mux_sel_out[23] ));
  MX2X1    g314(.A(\wb_reg_b_data_in[24] ), .B(\data_alu_b_in[24] ), .S0(new_n483), .Y(new_n605));
  MX2X1    g315(.A(new_n605), .B(\wb_reg_a_data_in[24] ), .S0(new_n493), .Y(new_n606));
  MX2X1    g316(.A(new_n606), .B(\ex_mem_reg_b_data_in[24] ), .S0(new_n502), .Y(new_n607));
  MX2X1    g317(.A(new_n607), .B(\ex_mem_reg_a_data_in[24] ), .S0(new_n511), .Y(\alu_b_mux_sel_out[24] ));
  MX2X1    g318(.A(\wb_reg_b_data_in[25] ), .B(\data_alu_b_in[25] ), .S0(new_n483), .Y(new_n609));
  MX2X1    g319(.A(new_n609), .B(\wb_reg_a_data_in[25] ), .S0(new_n493), .Y(new_n610));
  MX2X1    g320(.A(new_n610), .B(\ex_mem_reg_b_data_in[25] ), .S0(new_n502), .Y(new_n611));
  MX2X1    g321(.A(new_n611), .B(\ex_mem_reg_a_data_in[25] ), .S0(new_n511), .Y(\alu_b_mux_sel_out[25] ));
  MX2X1    g322(.A(\wb_reg_b_data_in[26] ), .B(\data_alu_b_in[26] ), .S0(new_n483), .Y(new_n613));
  MX2X1    g323(.A(new_n613), .B(\wb_reg_a_data_in[26] ), .S0(new_n493), .Y(new_n614));
  MX2X1    g324(.A(new_n614), .B(\ex_mem_reg_b_data_in[26] ), .S0(new_n502), .Y(new_n615));
  MX2X1    g325(.A(new_n615), .B(\ex_mem_reg_a_data_in[26] ), .S0(new_n511), .Y(\alu_b_mux_sel_out[26] ));
  MX2X1    g326(.A(\wb_reg_b_data_in[27] ), .B(\data_alu_b_in[27] ), .S0(new_n483), .Y(new_n617));
  MX2X1    g327(.A(new_n617), .B(\wb_reg_a_data_in[27] ), .S0(new_n493), .Y(new_n618));
  MX2X1    g328(.A(new_n618), .B(\ex_mem_reg_b_data_in[27] ), .S0(new_n502), .Y(new_n619));
  MX2X1    g329(.A(new_n619), .B(\ex_mem_reg_a_data_in[27] ), .S0(new_n511), .Y(\alu_b_mux_sel_out[27] ));
  MX2X1    g330(.A(\wb_reg_b_data_in[28] ), .B(\data_alu_b_in[28] ), .S0(new_n483), .Y(new_n621));
  MX2X1    g331(.A(new_n621), .B(\wb_reg_a_data_in[28] ), .S0(new_n493), .Y(new_n622));
  MX2X1    g332(.A(new_n622), .B(\ex_mem_reg_b_data_in[28] ), .S0(new_n502), .Y(new_n623));
  MX2X1    g333(.A(new_n623), .B(\ex_mem_reg_a_data_in[28] ), .S0(new_n511), .Y(\alu_b_mux_sel_out[28] ));
  MX2X1    g334(.A(\wb_reg_b_data_in[29] ), .B(\data_alu_b_in[29] ), .S0(new_n483), .Y(new_n625));
  MX2X1    g335(.A(new_n625), .B(\wb_reg_a_data_in[29] ), .S0(new_n493), .Y(new_n626));
  MX2X1    g336(.A(new_n626), .B(\ex_mem_reg_b_data_in[29] ), .S0(new_n502), .Y(new_n627));
  MX2X1    g337(.A(new_n627), .B(\ex_mem_reg_a_data_in[29] ), .S0(new_n511), .Y(\alu_b_mux_sel_out[29] ));
  MX2X1    g338(.A(\wb_reg_b_data_in[30] ), .B(\data_alu_b_in[30] ), .S0(new_n483), .Y(new_n629));
  MX2X1    g339(.A(new_n629), .B(\wb_reg_a_data_in[30] ), .S0(new_n493), .Y(new_n630));
  MX2X1    g340(.A(new_n630), .B(\ex_mem_reg_b_data_in[30] ), .S0(new_n502), .Y(new_n631));
  MX2X1    g341(.A(new_n631), .B(\ex_mem_reg_a_data_in[30] ), .S0(new_n511), .Y(\alu_b_mux_sel_out[30] ));
  MX2X1    g342(.A(\wb_reg_b_data_in[31] ), .B(\data_alu_b_in[31] ), .S0(new_n483), .Y(new_n633));
  MX2X1    g343(.A(new_n633), .B(\wb_reg_a_data_in[31] ), .S0(new_n493), .Y(new_n634));
  MX2X1    g344(.A(new_n634), .B(\ex_mem_reg_b_data_in[31] ), .S0(new_n502), .Y(new_n635));
  MX2X1    g345(.A(new_n635), .B(\ex_mem_reg_a_data_in[31] ), .S0(new_n511), .Y(\alu_b_mux_sel_out[31] ));
endmodule


