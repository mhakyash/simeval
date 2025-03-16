module led_controller_design_rst_ps7_0_100M_0_lpf
   (lpf_int,
    slowest_sync_clk,
    dcm_locked,
    aux_reset_in,
    mb_debug_sys_rst,
    ext_reset_in);
  output lpf_int;
  input slowest_sync_clk;
  input dcm_locked;
  input aux_reset_in;
  input mb_debug_sys_rst;
  input ext_reset_in;

  wire ACTIVE_LOW_AUX_n_0 ;
  wire ACTIVE_LOW_EXT_n_0 ;
  wire Q;
  wire [0:0]asr_lpf;
  wire aux_reset_in;
  wire dcm_locked;
  wire ext_reset_in;
  wire lpf_asr;
  wire lpf_exr;
  wire lpf_int;
  wire lpf_int0__0;
  wire mb_debug_sys_rst;
  wire p_1_in;
  wire p_2_in;
  wire p_3_in1_in;
  wire [3:0]p_3_out;
  wire slowest_sync_clk;

  led_controller_design_rst_ps7_0_100M_0_cdc_sync ACTIVE_LOW_AUX_ACT_LO_AUX 
       (.asr_lpf(asr_lpf),
        .aux_reset_in(aux_reset_in),
        .lpf_asr(lpf_asr),
        .lpf_asr_reg(ACTIVE_LOW_AUX_n_0 ),
        .p_1_in(p_1_in),
        .p_2_in(p_2_in),
        .scndry_out(p_3_in1_in),
        .slowest_sync_clk(slowest_sync_clk));
  led_controller_design_rst_ps7_0_100M_0_cdc_sync_0 ACTIVE_LOW_EXT_ACT_LO_EXT 
       (.ext_reset_in(ext_reset_in),
        .lpf_exr(lpf_exr),
        .lpf_exr_reg(ACTIVE_LOW_EXT_n_0 ),
        .mb_debug_sys_rst(mb_debug_sys_rst),
        .p_3_out(p_3_out[2:0]),
        .scndry_out(p_3_out[3]),
        .slowest_sync_clk(slowest_sync_clk));
  FDRE #(
    .INIT(1'b0)) 
    AUX_LPF_1_asr_lpf_reg 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_3_in1_in),
        .Q(p_2_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    AUX_LPF_2_asr_lpf_reg 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_2_in),
        .Q(p_1_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    AUX_LPF_3_asr_lpf_reg 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_1_in),
        .Q(asr_lpf),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    EXT_LPF_1_exr_lpf_reg 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_3_out[3]),
        .Q(p_3_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    EXT_LPF_2_exr_lpf_reg 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_3_out[2]),
        .Q(p_3_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    EXT_LPF_3_exr_lpf_reg 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_3_out[1]),
        .Q(p_3_out[0]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "SRL16" *) 
  (* box_type = "PRIMITIVE" *) 
  (* srl_name = "U0/EXT_LPF/POR_SRL_I " *) 
  SRL16E #(
    .INIT(16'hFFFF)) 
    POR_SRL_I
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(slowest_sync_clk),
        .D(1'b0),
        .Q(Q));
  FDRE #(
    .INIT(1'b0)) 
    lpf_asr_reg
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(ACTIVE_LOW_AUX_n_0 ),
        .Q(lpf_asr),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    lpf_exr_reg
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(ACTIVE_LOW_EXT_n_0 ),
        .Q(lpf_exr),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    lpf_int0
       (.I0(Q),
        .I1(lpf_asr),
        .I2(dcm_locked),
        .I3(lpf_exr),
        .O(lpf_int0__0));
  FDRE #(
    .INIT(1'b0)) 
    lpf_int_reg
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(lpf_int0__0),
        .Q(lpf_int),
        .R(1'b0));
endmodule