module Sensor_Interface (
  input analog_temp,
  input analog_press,
  input analog_humid,
  output reg [bits-1:0] digital_temp,
  output reg [bits-1:0] digital_press,
  output reg [bits-1:0] digital_humid
);

parameter bits = 8; // number of bits used to represent each sensor reading
parameter voltage_ref = 3.3; // reference voltage used by the ADC

reg [bits-1:0] adc_out;
reg [1:0] sensor_sel;

// ADC functionality
always @ (posedge clk) begin
  case (sensor_sel)
    2'b00: adc_out <= analog_temp * (2**bits) / voltage_ref;
    2'b01: adc_out <= analog_press * (2**bits) / voltage_ref;
    2'b10: adc_out <= analog_humid * (2**bits) / voltage_ref;
    default: adc_out <= 0;
  endcase
end

// Multiplexer functionality
always @ (posedge clk) begin
  case (sensor_sel)
    2'b00: digital_temp <= adc_out;
    2'b01: digital_press <= adc_out;
    2'b10: digital_humid <= adc_out;
    default: begin
      digital_temp <= 0;
      digital_press <= 0;
      digital_humid <= 0;
    end
  endcase
end

endmodule