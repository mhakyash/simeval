module Servo_Control_Block (
  input clk,
  input [15:0] pwm,
  output reg [15:0] servo
);

parameter pw_min = 1000;
parameter pw_max = 2000;
parameter pwm_freq = 50;
parameter servo_freq = 50;
parameter duty_cycle = 50;

reg [15:0] pwm_counter;
reg [15:0] servo_counter;
reg [15:0] pwm_width;

always @(posedge clk) begin
  // Generate PWM signal
  if (pwm_counter == 0) begin
    pwm_width = (pwm * (pw_max - pw_min) / 65535) + pw_min;
  end
  if (pwm_counter < pwm_width) begin
    servo <= 1;
  end else begin
    servo <= 0;
  end
  
  // Generate servo signal
  if (servo_counter == 0) begin
    servo_counter <= (servo_freq / pwm_freq) - 1;
  end else begin
    servo_counter <= servo_counter - 1;
  end
  if (servo_counter == 0) begin
    pwm_counter <= 0;
  end else begin
    pwm_counter <= pwm_counter + 1;
  end
end

endmodule