module AGC (
  input [15:0] input_signal,
  input [7:0] control_signal,
  output [15:0] output_signal
);

parameter gain_bits = 8; // number of bits used to represent the gain value

reg [gain_bits-1:0] gain_value; // binary value representing the gain
reg [15:0] adjusted_signal; // signal with constant output level

// Function to adjust the gain based on the control signal
function [gain_bits-1:0] adjust_gain;
  input [7:0] control;
  begin
    case (control)
      8'h00: adjust_gain = 8'h00; // no gain adjustment
      8'h01: adjust_gain = 8'h01; // small gain increase
      8'h02: adjust_gain = 8'h02;
      8'h03: adjust_gain = 8'h03;
      8'h04: adjust_gain = 8'h04;
      8'h05: adjust_gain = 8'h05;
      8'h06: adjust_gain = 8'h06;
      8'h07: adjust_gain = 8'h07;
      8'h08: adjust_gain = 8'h08; // maximum gain increase
      8'h09: adjust_gain = 8'h09; // no gain adjustment
      8'h0A: adjust_gain = 8'h0A;
      8'h0B: adjust_gain = 8'h0B;
      8'h0C: adjust_gain = 8'h0C;
      8'h0D: adjust_gain = 8'h0D;
      8'h0E: adjust_gain = 8'h0E;
      8'h0F: adjust_gain = 8'h0F;
      8'h10: adjust_gain = 8'h10; // maximum gain reduction
      8'h11: adjust_gain = 8'h11; // no gain adjustment
      8'h12: adjust_gain = 8'h12;
      8'h13: adjust_gain = 8'h13;
      8'h14: adjust_gain = 8'h14;
      8'h15: adjust_gain = 8'h15;
      8'h16: adjust_gain = 8'h16;
      8'h17: adjust_gain = 8'h17;
      8'h18: adjust_gain = 8'h18; // small gain reduction
      default: adjust_gain = 8'h00; // no gain adjustment
    endcase
  end
endfunction

// Assign the gain value based on the control signal
always @ (control_signal) begin
  gain_value = adjust_gain(control_signal);
end

// Compute the adjusted signal with constant output level
always @ (input_signal, gain_value) begin
  adjusted_signal = input_signal * gain_value;
end

// Assign the output signal
assign output_signal = adjusted_signal;

endmodule