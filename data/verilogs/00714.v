module battery_management_system (
  input voltage,
  input charge_en,
  input discharge_en,
  output current,
  output temperature,
  output charge_status,
  output discharge_status
);

  wire charging_current;
  wire charging_status;
  wire discharging_current;
  wire discharging_status;

  charging_block charging_inst (
    .voltage(voltage),
    .charge_en(charge_en),
    .current(charging_current),
    .charge_status(charging_status)
  );

  discharging_block discharging_inst (
    .voltage(voltage),
    .discharge_en(discharge_en),
    .current(discharging_current),
    .discharge_status(discharging_status)
  );

  monitoring_block monitoring_inst (
    .voltage(voltage),
    .temperature(temperature),
    .charge_status(charging_status),
    .discharge_status(discharging_status)
  );

  assign current = charging_current - discharging_current;

endmodule

module charging_block (
  input voltage,
  input charge_en,
  output current,
  output charge_status
);

  parameter MAX_VOLTAGE = 4.2;
  parameter CHARGING_CURRENT = 1.0;

  reg charging;
  reg constant_current;
  reg constant_voltage;

  assign current = CHARGING_CURRENT;
  assign charge_status = constant_voltage;

  always @(*) begin
    if (charge_en) begin
      if (voltage < MAX_VOLTAGE) begin
        charging = 1;
        constant_current = 1;
        constant_voltage = 0;
      end else begin
        charging = 1;
        constant_current = 0;
        constant_voltage = 1;
      end
    end else begin
      charging = 0;
      constant_current = 0;
      constant_voltage = 0;
    end
  end

endmodule

module discharging_block (
  input voltage,
  input discharge_en,
  output current,
  output discharge_status
);

  parameter MIN_VOLTAGE = 3.0;
  parameter DISCHARGING_CURRENT = 0.5;

  reg discharging;

  assign current = DISCHARGING_CURRENT;
  assign discharge_status = voltage < MIN_VOLTAGE;

  always @(*) begin
    if (discharge_en) begin
      if (voltage > MIN_VOLTAGE) begin
        discharging = 1;
      end else begin
        discharging = 0;
      end
    end else begin
      discharging = 0;
    end
  end

endmodule

module monitoring_block (
  input voltage,
  input temperature,
  output charge_status,
  output discharge_status
);

  parameter MAX_VOLTAGE_THRESHOLD = 4.1;
  parameter MAX_TEMPERATURE_THRESHOLD = 50;
  parameter MIN_TEMPERATURE_THRESHOLD = 0;

  assign charge_status = voltage > MAX_VOLTAGE_THRESHOLD;
  assign discharge_status = temperature > MAX_TEMPERATURE_THRESHOLD || temperature < MIN_TEMPERATURE_THRESHOLD;

endmodule