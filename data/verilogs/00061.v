module PWM (
  input clk,
  input ctrl,
  output pwm
);

parameter f_clk = 100; // frequency of the clock signal
parameter duty_cycle = 50; // initial duty cycle of the output signal

reg [31:0] counter;
reg pwm_out;

always @(posedge clk) begin
  counter <= counter + 1;
  if (counter >= (f_clk / 100 * duty_cycle)) begin
    pwm_out <= 1;
  end else begin
    pwm_out <= 0;
  end
end

always @(posedge clk) begin
  if (ctrl) begin
    counter <= 0;
  end
end

assign pwm = pwm_out;

endmodule