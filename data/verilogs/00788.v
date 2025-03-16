module thermal_management (
  input temp,
  output fan_speed
);

  parameter min_temp = 20;
  parameter max_temp = 80;
  parameter fan_speed_min = 0;
  parameter fan_speed_max = 100;

  reg [6:0] fan_speed_reg; // 7-bit register to store fan speed value

  always @(*) begin
    if (temp < min_temp) begin
      fan_speed_reg = fan_speed_min;
    end else if (temp > max_temp) begin
      fan_speed_reg = fan_speed_max;
    end else begin
      fan_speed_reg = ((temp - min_temp) * (fan_speed_max - fan_speed_min)) / (max_temp - min_temp) + fan_speed_min;
    end
  end

  assign fan_speed = fan_speed_reg;

endmodule