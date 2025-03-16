// Benchmark "ddr_sdram_controller" written by ABC on Wed Jun 26 15:22:11 2024

module ddr_sdram_controller ( 
    core_clock_in, reset_n_core_clock_in, fr_clock_in, hr_clock_in,
    write_strobe_clock_in, \write_strobe[0] , \write_strobe[1] ,
    \write_strobe[2] , \write_strobe[3] , strobe_ena_hr_clock_in,
    \read_write_data_io[0] , \read_write_data_io[1] ,
    \read_write_data_io[2] , \read_write_data_io[3] ,
    \read_write_data_io[4] , \read_write_data_io[5] ,
    \read_write_data_io[6] , \read_write_data_io[7] , \write_oe_in[0] ,
    \write_oe_in[1] , \write_oe_in[2] , \write_oe_in[3] , \write_oe_in[4] ,
    \write_oe_in[5] , \write_oe_in[6] , \write_oe_in[7] , \write_oe_in[8] ,
    \write_oe_in[9] , \write_oe_in[10] , \write_oe_in[11] ,
    \write_oe_in[12] , \write_oe_in[13] , \write_oe_in[14] ,
    \write_oe_in[15] , strobe_io, \output_strobe_ena[0] ,
    \output_strobe_ena[1] , strobe_n_io, \oct_ena_in[0] , \oct_ena_in[1] ,
    \write_data_in[0] , \write_data_in[1] , \write_data_in[2] ,
    \write_data_in[3] , \extra_write_data_in[0] , \extra_write_data_in[1] ,
    \parallelterminationcontrol_in[0] , \parallelterminationcontrol_in[1] ,
    \parallelterminationcontrol_in[2] , \parallelterminationcontrol_in[3] ,
    \parallelterminationcontrol_in[4] , \parallelterminationcontrol_in[5] ,
    \parallelterminationcontrol_in[6] , \parallelterminationcontrol_in[7] ,
    \parallelterminationcontrol_in[8] , \parallelterminationcontrol_in[9] ,
    \parallelterminationcontrol_in[10] ,
    \parallelterminationcontrol_in[11] ,
    \parallelterminationcontrol_in[12] ,
    \parallelterminationcontrol_in[13] ,
    \parallelterminationcontrol_in[14] ,
    \parallelterminationcontrol_in[15] , \seriesterminationcontrol_in[0] ,
    \seriesterminationcontrol_in[1] , \seriesterminationcontrol_in[2] ,
    \seriesterminationcontrol_in[3] , \seriesterminationcontrol_in[4] ,
    \seriesterminationcontrol_in[5] , \seriesterminationcontrol_in[6] ,
    \seriesterminationcontrol_in[7] , \seriesterminationcontrol_in[8] ,
    \seriesterminationcontrol_in[9] , \seriesterminationcontrol_in[10] ,
    \seriesterminationcontrol_in[11] , \seriesterminationcontrol_in[12] ,
    \seriesterminationcontrol_in[13] , \seriesterminationcontrol_in[14] ,
    \seriesterminationcontrol_in[15] , config_data_in, config_update,
    config_dqs_ena, \config_io_ena[0] , \config_io_ena[1] ,
    \config_io_ena[2] , \config_io_ena[3] , \config_io_ena[4] ,
    \config_io_ena[5] , \config_io_ena[6] , \config_io_ena[7] ,
    \config_extra_io_ena[0] , \config_extra_io_ena[1] , config_dqs_io_ena,
    config_clock_in, \lfifo_rdata_en[0] , \lfifo_rdata_en[1] ,
    \lfifo_rdata_en_full[0] , \lfifo_rdata_en_full[1] ,
    \lfifo_rd_latency[0] , \lfifo_rd_latency[1] , \lfifo_rd_latency[2] ,
    \lfifo_rd_latency[3] , \lfifo_rd_latency[4] , lfifo_reset_n,
    \vfifo_qvld[0] , \vfifo_qvld[1] , \vfifo_inc_wr_ptr[0] ,
    \vfifo_inc_wr_ptr[1] , vfifo_reset_n, rfifo_reset_n,
    \dll_delayctrl_in[0] , \dll_delayctrl_in[1] , \dll_delayctrl_in[2] ,
    \dll_delayctrl_in[3] , \dll_delayctrl_in[4] , \dll_delayctrl_in[5] ,
    \dll_delayctrl_in[6] ,
    capture_strobe_tracking, \read_data_out[0] , \read_data_out[1] ,
    \read_data_out[2] , \read_data_out[3] , \read_data_out[4] ,
    \read_data_out[5] , \read_data_out[6] , \read_data_out[7] ,
    \read_data_out[8] , \read_data_out[9] , \read_data_out[10] ,
    \read_data_out[11] , \read_data_out[12] , \read_data_out[13] ,
    \read_data_out[14] , \read_data_out[15] , capture_strobe_out,
    \extra_write_data_out[0] , \extra_write_data_out[1] ,
    lfifo_rdata_valid  );
  input  core_clock_in, reset_n_core_clock_in, fr_clock_in, hr_clock_in,
    write_strobe_clock_in, \write_strobe[0] , \write_strobe[1] ,
    \write_strobe[2] , \write_strobe[3] , strobe_ena_hr_clock_in,
    \read_write_data_io[0] , \read_write_data_io[1] ,
    \read_write_data_io[2] , \read_write_data_io[3] ,
    \read_write_data_io[4] , \read_write_data_io[5] ,
    \read_write_data_io[6] , \read_write_data_io[7] , \write_oe_in[0] ,
    \write_oe_in[1] , \write_oe_in[2] , \write_oe_in[3] , \write_oe_in[4] ,
    \write_oe_in[5] , \write_oe_in[6] , \write_oe_in[7] , \write_oe_in[8] ,
    \write_oe_in[9] , \write_oe_in[10] , \write_oe_in[11] ,
    \write_oe_in[12] , \write_oe_in[13] , \write_oe_in[14] ,
    \write_oe_in[15] , strobe_io, \output_strobe_ena[0] ,
    \output_strobe_ena[1] , strobe_n_io, \oct_ena_in[0] , \oct_ena_in[1] ,
    \write_data_in[0] , \write_data_in[1] , \write_data_in[2] ,
    \write_data_in[3] , \extra_write_data_in[0] , \extra_write_data_in[1] ,
    \parallelterminationcontrol_in[0] , \parallelterminationcontrol_in[1] ,
    \parallelterminationcontrol_in[2] , \parallelterminationcontrol_in[3] ,
    \parallelterminationcontrol_in[4] , \parallelterminationcontrol_in[5] ,
    \parallelterminationcontrol_in[6] , \parallelterminationcontrol_in[7] ,
    \parallelterminationcontrol_in[8] , \parallelterminationcontrol_in[9] ,
    \parallelterminationcontrol_in[10] ,
    \parallelterminationcontrol_in[11] ,
    \parallelterminationcontrol_in[12] ,
    \parallelterminationcontrol_in[13] ,
    \parallelterminationcontrol_in[14] ,
    \parallelterminationcontrol_in[15] , \seriesterminationcontrol_in[0] ,
    \seriesterminationcontrol_in[1] , \seriesterminationcontrol_in[2] ,
    \seriesterminationcontrol_in[3] , \seriesterminationcontrol_in[4] ,
    \seriesterminationcontrol_in[5] , \seriesterminationcontrol_in[6] ,
    \seriesterminationcontrol_in[7] , \seriesterminationcontrol_in[8] ,
    \seriesterminationcontrol_in[9] , \seriesterminationcontrol_in[10] ,
    \seriesterminationcontrol_in[11] , \seriesterminationcontrol_in[12] ,
    \seriesterminationcontrol_in[13] , \seriesterminationcontrol_in[14] ,
    \seriesterminationcontrol_in[15] , config_data_in, config_update,
    config_dqs_ena, \config_io_ena[0] , \config_io_ena[1] ,
    \config_io_ena[2] , \config_io_ena[3] , \config_io_ena[4] ,
    \config_io_ena[5] , \config_io_ena[6] , \config_io_ena[7] ,
    \config_extra_io_ena[0] , \config_extra_io_ena[1] , config_dqs_io_ena,
    config_clock_in, \lfifo_rdata_en[0] , \lfifo_rdata_en[1] ,
    \lfifo_rdata_en_full[0] , \lfifo_rdata_en_full[1] ,
    \lfifo_rd_latency[0] , \lfifo_rd_latency[1] , \lfifo_rd_latency[2] ,
    \lfifo_rd_latency[3] , \lfifo_rd_latency[4] , lfifo_reset_n,
    \vfifo_qvld[0] , \vfifo_qvld[1] , \vfifo_inc_wr_ptr[0] ,
    \vfifo_inc_wr_ptr[1] , vfifo_reset_n, rfifo_reset_n,
    \dll_delayctrl_in[0] , \dll_delayctrl_in[1] , \dll_delayctrl_in[2] ,
    \dll_delayctrl_in[3] , \dll_delayctrl_in[4] , \dll_delayctrl_in[5] ,
    \dll_delayctrl_in[6] ;
  output capture_strobe_tracking, \read_data_out[0] , \read_data_out[1] ,
    \read_data_out[2] , \read_data_out[3] , \read_data_out[4] ,
    \read_data_out[5] , \read_data_out[6] , \read_data_out[7] ,
    \read_data_out[8] , \read_data_out[9] , \read_data_out[10] ,
    \read_data_out[11] , \read_data_out[12] , \read_data_out[13] ,
    \read_data_out[14] , \read_data_out[15] , capture_strobe_out,
    \extra_write_data_out[0] , \extra_write_data_out[1] ,
    lfifo_rdata_valid;
  ZERO     g00(.Y(capture_strobe_tracking));
  ZERO     g01(.Y(\read_data_out[0] ));
  ZERO     g02(.Y(\read_data_out[1] ));
  ZERO     g03(.Y(\read_data_out[2] ));
  ZERO     g04(.Y(\read_data_out[3] ));
  ZERO     g05(.Y(\read_data_out[4] ));
  ZERO     g06(.Y(\read_data_out[5] ));
  ZERO     g07(.Y(\read_data_out[6] ));
  ZERO     g08(.Y(\read_data_out[7] ));
  ZERO     g09(.Y(\read_data_out[8] ));
  ZERO     g10(.Y(\read_data_out[9] ));
  ZERO     g11(.Y(\read_data_out[10] ));
  ZERO     g12(.Y(\read_data_out[11] ));
  ZERO     g13(.Y(\read_data_out[12] ));
  ZERO     g14(.Y(\read_data_out[13] ));
  ZERO     g15(.Y(\read_data_out[14] ));
  ZERO     g16(.Y(\read_data_out[15] ));
  ZERO     g17(.Y(capture_strobe_out));
  ZERO     g18(.Y(\extra_write_data_out[0] ));
  ZERO     g19(.Y(\extra_write_data_out[1] ));
  ZERO     g20(.Y(lfifo_rdata_valid));
endmodule


