module system_axi_quad_spi_shield_0_axi_lite_ipif_v3_0_4_pselect_f__parameterized5
   (p_10_out,
    bus2ip_addr_i_reg,
    Q);
  output p_10_out;
  input [4:0] bus2ip_addr_i_reg;
  input Q;

  wire Q;
  wire [4:0] bus2ip_addr_i_reg;
  wire p_10_out;

  LUT6 #(
    .INIT(64'h0000004000000000)) 
    CS
       (.I0(bus2ip_addr_i_reg[3]),
        .I1(bus2ip_addr_i_reg[2]),
        .I2(bus2ip_addr_i_reg[0]),
        .I3(bus2ip_addr_i_reg[1]),
        .I4(bus2ip_addr_i_reg[4]),
        .I5(Q),
        .O(p_10_out));
endmodule