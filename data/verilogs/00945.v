module motor_control (
  input clk,
  input dir,
  input [7:0] pwm,
  input [7:0] duty_cycle,
  output h_bridge_out1,
  output h_bridge_out2
);

  reg [7:0] counter;
  reg pwm_out;
  
  always @(posedge clk) begin
    counter <= counter + 1;
    if (counter >= duty_cycle) begin
      pwm_out <= 0;
    end else begin
      pwm_out <= 1;
    end
  end
  
  assign h_bridge_out1 = (dir == 1) ? pwm_out : 0;
  assign h_bridge_out2 = (dir == 0) ? pwm_out : 0;

endmodule