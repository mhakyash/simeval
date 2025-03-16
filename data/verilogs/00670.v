module current_source_sink (
  input ctrl,
  input v_in,
  input i_ctrl,
  output i_out
);

parameter i_max = 1; // maximum current that can be sourced or sunk

reg i_out_reg; // register to store the output current

always @(*) begin
  if (ctrl == 1) begin // current source mode
    i_out_reg = i_ctrl;
  end else begin // current sink mode
    i_out_reg = -i_ctrl;
  end
  
  if (i_out_reg > i_max) begin // limit the current to i_max
    i_out_reg = i_max;
  end else if (i_out_reg < -i_max) begin
    i_out_reg = -i_max;
  end
end

assign i_out = i_out_reg;

endmodule