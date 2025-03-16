module phase_detector (
  input ref,
  input in,
  output reg error
);

always @ (posedge ref, posedge in) begin
  error <= ref ^ in;
end

endmodule
module charge_pump (
  input error,
  output reg current
);

always @ (error) begin
  if (error) begin
    current <= current + k;
  end else begin
    current <= current - k;
  end
end

endmodule
module loop_filter (
  input clk,
  input current,
  output reg voltage
);

reg [31:0] integral;

always @ (posedge clk) begin
  integral <= integral + current;
  voltage <= integral / (R * C);
end

endmodule
module vcdl (
  input clk,
  input in,
  input [31:0] delay,
  output reg out
);

reg [N-1:0] buffer;

always @ (posedge clk) begin
  buffer <= {in, buffer[N-2:0]};
  out <= buffer[delay];
end

endmodule
