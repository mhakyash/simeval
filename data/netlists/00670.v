// Benchmark "current_source_sink" written by ABC on Wed Jun 26 15:22:17 2024

module current_source_sink ( 
    ctrl, v_in, i_ctrl,
    i_out  );
  input  ctrl, v_in, i_ctrl;
  output i_out;
  ONE      g0(.Y(i_out));
endmodule


