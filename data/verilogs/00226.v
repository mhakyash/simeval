module my_module(ref_out, vreg_out, vtrip_out, od_out, inp_dis_out, 
                 VINREF, VOUTREF, REFLEAK_BIAS, VCCD, VCCHIB, VDDA, VDDIO, 
                 VDDIO_Q, VSSD, VSSIO, VSSIO_Q, HLD_H_N, IBUF_SEL, OD_H, 
                 VOHREF, VREF_SEL, VREG_EN, VTRIP_SEL);

  // Instantiate sky130_fd_io__top_refgen module
  wire error_vsel;
  output VINREF;
  output VOUTREF;
  inout REFLEAK_BIAS;
  inout VCCD;
  inout VCCHIB;
  inout VDDA;
  inout VDDIO;
  inout VDDIO_Q;
  inout VSSD;
  inout VSSIO;
  inout VSSIO_Q;
  input HLD_H_N;
  input IBUF_SEL;
  input OD_H;
  input VOHREF;
  input VREF_SEL;
  input VREG_EN;
  input VTRIP_SEL;
  wire [2:0] dm_final;
  wire       slow_final, vtrip_sel_final, inp_dis_final, hld_ovr_final;
  wire [2:0] dm;
  wire       slow, inp_dis, hld_ovr;
  wire [1:0] vsel;
  wire pwr_good_active_mode    = (VDDIO_Q===1) && (VDDIO===1)  && (VSSD===0)    && (VCCD===1);
  wire pwr_good_hold_mode      = (VDDIO_Q===1) && (VDDIO===1)  && (VSSD===0);
  sky130_fd_io__top_refgen refgen(VINREF, VOUTREF, REFLEAK_BIAS, VCCD, VCCHIB, VDDA, VDDIO, VDDIO_Q, VSSD, VSSIO, VSSIO_Q, HLD_H_N, IBUF_SEL, OD_H, VOHREF, VREF_SEL, VREG_EN, VTRIP_SEL, dm_final, slow_final, vtrip_sel_final, inp_dis_final, hld_ovr_final, dm, slow, inp_dis, hld_ovr, vsel, error_vsel);

  // Output signals
  wire [4:0] output_vector;
  assign output_vector = {ref_out, vreg_out, vtrip_out, od_out, inp_dis_out};

  // Generate ref_out
  assign ref_out = VOUTREF;

  // Generate vreg_out
  assign vreg_out = VREG_EN ? VDDIO : VSSD;

  // Generate vtrip_out
  assign vtrip_out = vtrip_sel_final;

  // Generate od_out
  assign od_out = OD_H && pwr_good_hold_mode;

  // Generate inp_dis_out
  assign inp_dis_out = IBUF_SEL && pwr_good_active_mode;

  // Assign output_vector
  assign output_vector = {ref_out, vreg_out, vtrip_out, od_out, inp_dis_out};

endmodule