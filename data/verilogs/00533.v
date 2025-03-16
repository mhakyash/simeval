module PWM (
  input clk,
  input [7:0] ctrl,
  output pwm
);

  reg [7:0] count;
  reg pwm_out;

  always @(posedge clk) begin
    if (count == 8'hFF) begin
      count <= 8'h00;
      pwm_out <= (count < ctrl);
    end else begin
      count <= count + 1;
      pwm_out <= (count < ctrl);
    end
  end

  assign pwm = pwm_out;

endmodule