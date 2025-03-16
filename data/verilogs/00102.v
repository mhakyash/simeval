module BOR (
  input vcc,
  input vref,
  output reg rst_n
);

parameter vth = 3.0; // threshold voltage for BOR circuit

reg vcc_filtered; // filtered vcc signal

// Low-pass filter to remove noise from vcc signal
always @ (posedge vcc) begin
  vcc_filtered <= (vcc_filtered + vcc) / 2;
end

// BOR circuit logic
always @ (vcc_filtered, vref) begin
  if (vcc_filtered < vref - vth) begin
    rst_n <= 0;
  end else begin
    rst_n <= 1;
  end
end

endmodule