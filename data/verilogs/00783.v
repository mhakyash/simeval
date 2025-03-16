module BOR (
  input voltage,
  input reset_in,
  output reset_out
);

parameter threshold = 3.3; // voltage threshold value

reg reset_out_reg; // register to synchronize reset_out with reset_in

always @(posedge reset_in) begin
  reset_out_reg <= 1'b0; // reset reset_out_reg on rising edge of reset_in
end

always @(posedge voltage) begin
  if (voltage < threshold) begin
    reset_out_reg <= 1'b1; // set reset_out_reg to 1 if voltage is below threshold
  end else begin
    reset_out_reg <= 1'b0; // reset reset_out_reg to 0 if voltage is above threshold
  end
end

assign reset_out = reset_out_reg & reset_in; // synchronize reset_out with reset_in

endmodule