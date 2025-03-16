// Benchmark "niosii_nios2_gen2_0_cpu_nios2_oci_dbrk" written by ABC on Wed Jun 26 15:22:10 2024

module niosii_nios2_gen2_0_cpu_nios2_oci_dbrk ( 
    \E_st_data[0] , \E_st_data[1] , \E_st_data[2] , \E_st_data[3] ,
    \E_st_data[4] , \E_st_data[5] , \E_st_data[6] , \E_st_data[7] ,
    \E_st_data[8] , \E_st_data[9] , \E_st_data[10] , \E_st_data[11] ,
    \E_st_data[12] , \E_st_data[13] , \E_st_data[14] , \E_st_data[15] ,
    \E_st_data[16] , \E_st_data[17] , \E_st_data[18] , \E_st_data[19] ,
    \E_st_data[20] , \E_st_data[21] , \E_st_data[22] , \E_st_data[23] ,
    \E_st_data[24] , \E_st_data[25] , \E_st_data[26] , \E_st_data[27] ,
    \E_st_data[28] , \E_st_data[29] , \E_st_data[30] , \E_st_data[31] ,
    \av_ld_data_aligned_filtered[0] , \av_ld_data_aligned_filtered[1] ,
    \av_ld_data_aligned_filtered[2] , \av_ld_data_aligned_filtered[3] ,
    \av_ld_data_aligned_filtered[4] , \av_ld_data_aligned_filtered[5] ,
    \av_ld_data_aligned_filtered[6] , \av_ld_data_aligned_filtered[7] ,
    \av_ld_data_aligned_filtered[8] , \av_ld_data_aligned_filtered[9] ,
    \av_ld_data_aligned_filtered[10] , \av_ld_data_aligned_filtered[11] ,
    \av_ld_data_aligned_filtered[12] , \av_ld_data_aligned_filtered[13] ,
    \av_ld_data_aligned_filtered[14] , \av_ld_data_aligned_filtered[15] ,
    \av_ld_data_aligned_filtered[16] , \av_ld_data_aligned_filtered[17] ,
    \av_ld_data_aligned_filtered[18] , \av_ld_data_aligned_filtered[19] ,
    \av_ld_data_aligned_filtered[20] , \av_ld_data_aligned_filtered[21] ,
    \av_ld_data_aligned_filtered[22] , \av_ld_data_aligned_filtered[23] ,
    \av_ld_data_aligned_filtered[24] , \av_ld_data_aligned_filtered[25] ,
    \av_ld_data_aligned_filtered[26] , \av_ld_data_aligned_filtered[27] ,
    \av_ld_data_aligned_filtered[28] , \av_ld_data_aligned_filtered[29] ,
    \av_ld_data_aligned_filtered[30] , \av_ld_data_aligned_filtered[31] ,
    clk, \d_address[0] , \d_address[1] , \d_address[2] , \d_address[3] ,
    \d_address[4] , \d_address[5] , \d_address[6] , \d_address[7] ,
    \d_address[8] , \d_address[9] , \d_address[10] , \d_address[11] ,
    \d_address[12] , \d_address[13] , \d_address[14] , \d_address[15] ,
    \d_address[16] , \d_address[17] , \d_address[18] , \d_address[19] ,
    \d_address[20] , \d_address[21] , \d_address[22] , d_read,
    d_waitrequest, d_write, debugack, reset_n,
    \cpu_d_address[0] , \cpu_d_address[1] , \cpu_d_address[2] ,
    \cpu_d_address[3] , \cpu_d_address[4] , \cpu_d_address[5] ,
    \cpu_d_address[6] , \cpu_d_address[7] , \cpu_d_address[8] ,
    \cpu_d_address[9] , \cpu_d_address[10] , \cpu_d_address[11] ,
    \cpu_d_address[12] , \cpu_d_address[13] , \cpu_d_address[14] ,
    \cpu_d_address[15] , \cpu_d_address[16] , \cpu_d_address[17] ,
    \cpu_d_address[18] , \cpu_d_address[19] , \cpu_d_address[20] ,
    \cpu_d_address[21] , \cpu_d_address[22] , cpu_d_read,
    \cpu_d_readdata[0] , \cpu_d_readdata[1] , \cpu_d_readdata[2] ,
    \cpu_d_readdata[3] , \cpu_d_readdata[4] , \cpu_d_readdata[5] ,
    \cpu_d_readdata[6] , \cpu_d_readdata[7] , \cpu_d_readdata[8] ,
    \cpu_d_readdata[9] , \cpu_d_readdata[10] , \cpu_d_readdata[11] ,
    \cpu_d_readdata[12] , \cpu_d_readdata[13] , \cpu_d_readdata[14] ,
    \cpu_d_readdata[15] , \cpu_d_readdata[16] , \cpu_d_readdata[17] ,
    \cpu_d_readdata[18] , \cpu_d_readdata[19] , \cpu_d_readdata[20] ,
    \cpu_d_readdata[21] , \cpu_d_readdata[22] , \cpu_d_readdata[23] ,
    \cpu_d_readdata[24] , \cpu_d_readdata[25] , \cpu_d_readdata[26] ,
    \cpu_d_readdata[27] , \cpu_d_readdata[28] , \cpu_d_readdata[29] ,
    \cpu_d_readdata[30] , \cpu_d_readdata[31] , cpu_d_wait, cpu_d_write,
    \cpu_d_writedata[0] , \cpu_d_writedata[1] , \cpu_d_writedata[2] ,
    \cpu_d_writedata[3] , \cpu_d_writedata[4] , \cpu_d_writedata[5] ,
    \cpu_d_writedata[6] , \cpu_d_writedata[7] , \cpu_d_writedata[8] ,
    \cpu_d_writedata[9] , \cpu_d_writedata[10] , \cpu_d_writedata[11] ,
    \cpu_d_writedata[12] , \cpu_d_writedata[13] , \cpu_d_writedata[14] ,
    \cpu_d_writedata[15] , \cpu_d_writedata[16] , \cpu_d_writedata[17] ,
    \cpu_d_writedata[18] , \cpu_d_writedata[19] , \cpu_d_writedata[20] ,
    \cpu_d_writedata[21] , \cpu_d_writedata[22] , \cpu_d_writedata[23] ,
    \cpu_d_writedata[24] , \cpu_d_writedata[25] , \cpu_d_writedata[26] ,
    \cpu_d_writedata[27] , \cpu_d_writedata[28] , \cpu_d_writedata[29] ,
    \cpu_d_writedata[30] , \cpu_d_writedata[31] , dbrk_break, dbrk_goto0,
    dbrk_goto1, dbrk_traceme, dbrk_traceoff, dbrk_traceon, dbrk_trigout  );
  input  \E_st_data[0] , \E_st_data[1] , \E_st_data[2] , \E_st_data[3] ,
    \E_st_data[4] , \E_st_data[5] , \E_st_data[6] , \E_st_data[7] ,
    \E_st_data[8] , \E_st_data[9] , \E_st_data[10] , \E_st_data[11] ,
    \E_st_data[12] , \E_st_data[13] , \E_st_data[14] , \E_st_data[15] ,
    \E_st_data[16] , \E_st_data[17] , \E_st_data[18] , \E_st_data[19] ,
    \E_st_data[20] , \E_st_data[21] , \E_st_data[22] , \E_st_data[23] ,
    \E_st_data[24] , \E_st_data[25] , \E_st_data[26] , \E_st_data[27] ,
    \E_st_data[28] , \E_st_data[29] , \E_st_data[30] , \E_st_data[31] ,
    \av_ld_data_aligned_filtered[0] , \av_ld_data_aligned_filtered[1] ,
    \av_ld_data_aligned_filtered[2] , \av_ld_data_aligned_filtered[3] ,
    \av_ld_data_aligned_filtered[4] , \av_ld_data_aligned_filtered[5] ,
    \av_ld_data_aligned_filtered[6] , \av_ld_data_aligned_filtered[7] ,
    \av_ld_data_aligned_filtered[8] , \av_ld_data_aligned_filtered[9] ,
    \av_ld_data_aligned_filtered[10] , \av_ld_data_aligned_filtered[11] ,
    \av_ld_data_aligned_filtered[12] , \av_ld_data_aligned_filtered[13] ,
    \av_ld_data_aligned_filtered[14] , \av_ld_data_aligned_filtered[15] ,
    \av_ld_data_aligned_filtered[16] , \av_ld_data_aligned_filtered[17] ,
    \av_ld_data_aligned_filtered[18] , \av_ld_data_aligned_filtered[19] ,
    \av_ld_data_aligned_filtered[20] , \av_ld_data_aligned_filtered[21] ,
    \av_ld_data_aligned_filtered[22] , \av_ld_data_aligned_filtered[23] ,
    \av_ld_data_aligned_filtered[24] , \av_ld_data_aligned_filtered[25] ,
    \av_ld_data_aligned_filtered[26] , \av_ld_data_aligned_filtered[27] ,
    \av_ld_data_aligned_filtered[28] , \av_ld_data_aligned_filtered[29] ,
    \av_ld_data_aligned_filtered[30] , \av_ld_data_aligned_filtered[31] ,
    clk, \d_address[0] , \d_address[1] , \d_address[2] , \d_address[3] ,
    \d_address[4] , \d_address[5] , \d_address[6] , \d_address[7] ,
    \d_address[8] , \d_address[9] , \d_address[10] , \d_address[11] ,
    \d_address[12] , \d_address[13] , \d_address[14] , \d_address[15] ,
    \d_address[16] , \d_address[17] , \d_address[18] , \d_address[19] ,
    \d_address[20] , \d_address[21] , \d_address[22] , d_read,
    d_waitrequest, d_write, debugack, reset_n;
  output \cpu_d_address[0] , \cpu_d_address[1] , \cpu_d_address[2] ,
    \cpu_d_address[3] , \cpu_d_address[4] , \cpu_d_address[5] ,
    \cpu_d_address[6] , \cpu_d_address[7] , \cpu_d_address[8] ,
    \cpu_d_address[9] , \cpu_d_address[10] , \cpu_d_address[11] ,
    \cpu_d_address[12] , \cpu_d_address[13] , \cpu_d_address[14] ,
    \cpu_d_address[15] , \cpu_d_address[16] , \cpu_d_address[17] ,
    \cpu_d_address[18] , \cpu_d_address[19] , \cpu_d_address[20] ,
    \cpu_d_address[21] , \cpu_d_address[22] , cpu_d_read,
    \cpu_d_readdata[0] , \cpu_d_readdata[1] , \cpu_d_readdata[2] ,
    \cpu_d_readdata[3] , \cpu_d_readdata[4] , \cpu_d_readdata[5] ,
    \cpu_d_readdata[6] , \cpu_d_readdata[7] , \cpu_d_readdata[8] ,
    \cpu_d_readdata[9] , \cpu_d_readdata[10] , \cpu_d_readdata[11] ,
    \cpu_d_readdata[12] , \cpu_d_readdata[13] , \cpu_d_readdata[14] ,
    \cpu_d_readdata[15] , \cpu_d_readdata[16] , \cpu_d_readdata[17] ,
    \cpu_d_readdata[18] , \cpu_d_readdata[19] , \cpu_d_readdata[20] ,
    \cpu_d_readdata[21] , \cpu_d_readdata[22] , \cpu_d_readdata[23] ,
    \cpu_d_readdata[24] , \cpu_d_readdata[25] , \cpu_d_readdata[26] ,
    \cpu_d_readdata[27] , \cpu_d_readdata[28] , \cpu_d_readdata[29] ,
    \cpu_d_readdata[30] , \cpu_d_readdata[31] , cpu_d_wait, cpu_d_write,
    \cpu_d_writedata[0] , \cpu_d_writedata[1] , \cpu_d_writedata[2] ,
    \cpu_d_writedata[3] , \cpu_d_writedata[4] , \cpu_d_writedata[5] ,
    \cpu_d_writedata[6] , \cpu_d_writedata[7] , \cpu_d_writedata[8] ,
    \cpu_d_writedata[9] , \cpu_d_writedata[10] , \cpu_d_writedata[11] ,
    \cpu_d_writedata[12] , \cpu_d_writedata[13] , \cpu_d_writedata[14] ,
    \cpu_d_writedata[15] , \cpu_d_writedata[16] , \cpu_d_writedata[17] ,
    \cpu_d_writedata[18] , \cpu_d_writedata[19] , \cpu_d_writedata[20] ,
    \cpu_d_writedata[21] , \cpu_d_writedata[22] , \cpu_d_writedata[23] ,
    \cpu_d_writedata[24] , \cpu_d_writedata[25] , \cpu_d_writedata[26] ,
    \cpu_d_writedata[27] , \cpu_d_writedata[28] , \cpu_d_writedata[29] ,
    \cpu_d_writedata[30] , \cpu_d_writedata[31] , dbrk_break, dbrk_goto0,
    dbrk_goto1, dbrk_traceme, dbrk_traceoff, dbrk_traceon, dbrk_trigout;
  ZERO     g00(.Y(dbrk_break));
  ZERO     g01(.Y(dbrk_goto0));
  ZERO     g02(.Y(dbrk_goto1));
  ZERO     g03(.Y(dbrk_traceme));
  ZERO     g04(.Y(dbrk_traceoff));
  ZERO     g05(.Y(dbrk_traceon));
  ZERO     g06(.Y(dbrk_trigout));
  BUFX1    g07(.A(\d_address[0] ), .Y(\cpu_d_address[0] ));
  BUFX1    g08(.A(\d_address[1] ), .Y(\cpu_d_address[1] ));
  BUFX1    g09(.A(\d_address[2] ), .Y(\cpu_d_address[2] ));
  BUFX1    g10(.A(\d_address[3] ), .Y(\cpu_d_address[3] ));
  BUFX1    g11(.A(\d_address[4] ), .Y(\cpu_d_address[4] ));
  BUFX1    g12(.A(\d_address[5] ), .Y(\cpu_d_address[5] ));
  BUFX1    g13(.A(\d_address[6] ), .Y(\cpu_d_address[6] ));
  BUFX1    g14(.A(\d_address[7] ), .Y(\cpu_d_address[7] ));
  BUFX1    g15(.A(\d_address[8] ), .Y(\cpu_d_address[8] ));
  BUFX1    g16(.A(\d_address[9] ), .Y(\cpu_d_address[9] ));
  BUFX1    g17(.A(\d_address[10] ), .Y(\cpu_d_address[10] ));
  BUFX1    g18(.A(\d_address[11] ), .Y(\cpu_d_address[11] ));
  BUFX1    g19(.A(\d_address[12] ), .Y(\cpu_d_address[12] ));
  BUFX1    g20(.A(\d_address[13] ), .Y(\cpu_d_address[13] ));
  BUFX1    g21(.A(\d_address[14] ), .Y(\cpu_d_address[14] ));
  BUFX1    g22(.A(\d_address[15] ), .Y(\cpu_d_address[15] ));
  BUFX1    g23(.A(\d_address[16] ), .Y(\cpu_d_address[16] ));
  BUFX1    g24(.A(\d_address[17] ), .Y(\cpu_d_address[17] ));
  BUFX1    g25(.A(\d_address[18] ), .Y(\cpu_d_address[18] ));
  BUFX1    g26(.A(\d_address[19] ), .Y(\cpu_d_address[19] ));
  BUFX1    g27(.A(\d_address[20] ), .Y(\cpu_d_address[20] ));
  BUFX1    g28(.A(\d_address[21] ), .Y(\cpu_d_address[21] ));
  BUFX1    g29(.A(\d_address[22] ), .Y(\cpu_d_address[22] ));
  BUFX1    g30(.A(d_read), .Y(cpu_d_read));
  BUFX1    g31(.A(\av_ld_data_aligned_filtered[0] ), .Y(\cpu_d_readdata[0] ));
  BUFX1    g32(.A(\av_ld_data_aligned_filtered[1] ), .Y(\cpu_d_readdata[1] ));
  BUFX1    g33(.A(\av_ld_data_aligned_filtered[2] ), .Y(\cpu_d_readdata[2] ));
  BUFX1    g34(.A(\av_ld_data_aligned_filtered[3] ), .Y(\cpu_d_readdata[3] ));
  BUFX1    g35(.A(\av_ld_data_aligned_filtered[4] ), .Y(\cpu_d_readdata[4] ));
  BUFX1    g36(.A(\av_ld_data_aligned_filtered[5] ), .Y(\cpu_d_readdata[5] ));
  BUFX1    g37(.A(\av_ld_data_aligned_filtered[6] ), .Y(\cpu_d_readdata[6] ));
  BUFX1    g38(.A(\av_ld_data_aligned_filtered[7] ), .Y(\cpu_d_readdata[7] ));
  BUFX1    g39(.A(\av_ld_data_aligned_filtered[8] ), .Y(\cpu_d_readdata[8] ));
  BUFX1    g40(.A(\av_ld_data_aligned_filtered[9] ), .Y(\cpu_d_readdata[9] ));
  BUFX1    g41(.A(\av_ld_data_aligned_filtered[10] ), .Y(\cpu_d_readdata[10] ));
  BUFX1    g42(.A(\av_ld_data_aligned_filtered[11] ), .Y(\cpu_d_readdata[11] ));
  BUFX1    g43(.A(\av_ld_data_aligned_filtered[12] ), .Y(\cpu_d_readdata[12] ));
  BUFX1    g44(.A(\av_ld_data_aligned_filtered[13] ), .Y(\cpu_d_readdata[13] ));
  BUFX1    g45(.A(\av_ld_data_aligned_filtered[14] ), .Y(\cpu_d_readdata[14] ));
  BUFX1    g46(.A(\av_ld_data_aligned_filtered[15] ), .Y(\cpu_d_readdata[15] ));
  BUFX1    g47(.A(\av_ld_data_aligned_filtered[16] ), .Y(\cpu_d_readdata[16] ));
  BUFX1    g48(.A(\av_ld_data_aligned_filtered[17] ), .Y(\cpu_d_readdata[17] ));
  BUFX1    g49(.A(\av_ld_data_aligned_filtered[18] ), .Y(\cpu_d_readdata[18] ));
  BUFX1    g50(.A(\av_ld_data_aligned_filtered[19] ), .Y(\cpu_d_readdata[19] ));
  BUFX1    g51(.A(\av_ld_data_aligned_filtered[20] ), .Y(\cpu_d_readdata[20] ));
  BUFX1    g52(.A(\av_ld_data_aligned_filtered[21] ), .Y(\cpu_d_readdata[21] ));
  BUFX1    g53(.A(\av_ld_data_aligned_filtered[22] ), .Y(\cpu_d_readdata[22] ));
  BUFX1    g54(.A(\av_ld_data_aligned_filtered[23] ), .Y(\cpu_d_readdata[23] ));
  BUFX1    g55(.A(\av_ld_data_aligned_filtered[24] ), .Y(\cpu_d_readdata[24] ));
  BUFX1    g56(.A(\av_ld_data_aligned_filtered[25] ), .Y(\cpu_d_readdata[25] ));
  BUFX1    g57(.A(\av_ld_data_aligned_filtered[26] ), .Y(\cpu_d_readdata[26] ));
  BUFX1    g58(.A(\av_ld_data_aligned_filtered[27] ), .Y(\cpu_d_readdata[27] ));
  BUFX1    g59(.A(\av_ld_data_aligned_filtered[28] ), .Y(\cpu_d_readdata[28] ));
  BUFX1    g60(.A(\av_ld_data_aligned_filtered[29] ), .Y(\cpu_d_readdata[29] ));
  BUFX1    g61(.A(\av_ld_data_aligned_filtered[30] ), .Y(\cpu_d_readdata[30] ));
  BUFX1    g62(.A(\av_ld_data_aligned_filtered[31] ), .Y(\cpu_d_readdata[31] ));
  BUFX1    g63(.A(d_waitrequest), .Y(cpu_d_wait));
  BUFX1    g64(.A(d_write), .Y(cpu_d_write));
  BUFX1    g65(.A(\E_st_data[0] ), .Y(\cpu_d_writedata[0] ));
  BUFX1    g66(.A(\E_st_data[1] ), .Y(\cpu_d_writedata[1] ));
  BUFX1    g67(.A(\E_st_data[2] ), .Y(\cpu_d_writedata[2] ));
  BUFX1    g68(.A(\E_st_data[3] ), .Y(\cpu_d_writedata[3] ));
  BUFX1    g69(.A(\E_st_data[4] ), .Y(\cpu_d_writedata[4] ));
  BUFX1    g70(.A(\E_st_data[5] ), .Y(\cpu_d_writedata[5] ));
  BUFX1    g71(.A(\E_st_data[6] ), .Y(\cpu_d_writedata[6] ));
  BUFX1    g72(.A(\E_st_data[7] ), .Y(\cpu_d_writedata[7] ));
  BUFX1    g73(.A(\E_st_data[8] ), .Y(\cpu_d_writedata[8] ));
  BUFX1    g74(.A(\E_st_data[9] ), .Y(\cpu_d_writedata[9] ));
  BUFX1    g75(.A(\E_st_data[10] ), .Y(\cpu_d_writedata[10] ));
  BUFX1    g76(.A(\E_st_data[11] ), .Y(\cpu_d_writedata[11] ));
  BUFX1    g77(.A(\E_st_data[12] ), .Y(\cpu_d_writedata[12] ));
  BUFX1    g78(.A(\E_st_data[13] ), .Y(\cpu_d_writedata[13] ));
  BUFX1    g79(.A(\E_st_data[14] ), .Y(\cpu_d_writedata[14] ));
  BUFX1    g80(.A(\E_st_data[15] ), .Y(\cpu_d_writedata[15] ));
  BUFX1    g81(.A(\E_st_data[16] ), .Y(\cpu_d_writedata[16] ));
  BUFX1    g82(.A(\E_st_data[17] ), .Y(\cpu_d_writedata[17] ));
  BUFX1    g83(.A(\E_st_data[18] ), .Y(\cpu_d_writedata[18] ));
  BUFX1    g84(.A(\E_st_data[19] ), .Y(\cpu_d_writedata[19] ));
  BUFX1    g85(.A(\E_st_data[20] ), .Y(\cpu_d_writedata[20] ));
  BUFX1    g86(.A(\E_st_data[21] ), .Y(\cpu_d_writedata[21] ));
  BUFX1    g87(.A(\E_st_data[22] ), .Y(\cpu_d_writedata[22] ));
  BUFX1    g88(.A(\E_st_data[23] ), .Y(\cpu_d_writedata[23] ));
  BUFX1    g89(.A(\E_st_data[24] ), .Y(\cpu_d_writedata[24] ));
  BUFX1    g90(.A(\E_st_data[25] ), .Y(\cpu_d_writedata[25] ));
  BUFX1    g91(.A(\E_st_data[26] ), .Y(\cpu_d_writedata[26] ));
  BUFX1    g92(.A(\E_st_data[27] ), .Y(\cpu_d_writedata[27] ));
  BUFX1    g93(.A(\E_st_data[28] ), .Y(\cpu_d_writedata[28] ));
  BUFX1    g94(.A(\E_st_data[29] ), .Y(\cpu_d_writedata[29] ));
  BUFX1    g95(.A(\E_st_data[30] ), .Y(\cpu_d_writedata[30] ));
  BUFX1    g96(.A(\E_st_data[31] ), .Y(\cpu_d_writedata[31] ));
endmodule


