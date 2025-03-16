module DAC (
  input [r-1:0] din,
  output [v-1:0] analog_out
);

parameter r = 8; // resolution of digital input signal
parameter v = 10; // resolution of analog output signal

reg [v-1:0] analog_voltage; // register to store analog voltage

// convert digital input signal to analog voltage
always @ (din) begin
  case (din)
    8'b00000000: analog_voltage = 10'b0000000000;
    8'b00000001: analog_voltage = 10'b0000000010;
    8'b00000010: analog_voltage = 10'b0000000100;
    8'b00000011: analog_voltage = 10'b0000000110;
    8'b00000100: analog_voltage = 10'b0000001000;
    8'b00000101: analog_voltage = 10'b0000001010;
    8'b00000110: analog_voltage = 10'b0000001100;
    8'b00000111: analog_voltage = 10'b0000001110;
    8'b00001000: analog_voltage = 10'b0000010000;
    8'b00001001: analog_voltage = 10'b0000010010;
    8'b00001010: analog_voltage = 10'b0000010100;
    8'b00001011: analog_voltage = 10'b0000010110;
    8'b00001100: analog_voltage = 10'b0000011000;
    8'b00001101: analog_voltage = 10'b0000011010;
    8'b00001110: analog_voltage = 10'b0000011100;
    8'b00001111: analog_voltage = 10'b0000011110;
    // add more cases for higher resolutions
    default: analog_voltage = 10'b0000000000; // default to 0V
  endcase
end

assign analog_out = analog_voltage; // assign analog voltage to output

endmodule