module clk_phase_shifter (
  input clk,
  input [n-1:0] ctrl,
  output clk_out
);

parameter n = 3; // number of bits used to represent the phase shift amount. The phase shift amount should be a multiple of 2^n.

reg [n-1:0] phase_shift_amount;
wire [n-1:0] phase_shifted_ctrl;
wire [n-1:0] phase_shifted_amount;
wire [n-1:0] phase_shifted_clk;

// Define the phase shift amount as a function of the control signal
always @ (ctrl) begin
  phase_shift_amount = ctrl << (n - 1);
end

// Shift the phase of the input clock signal by the specified amount
assign phase_shifted_ctrl = {ctrl[n-1], ctrl};
assign phase_shifted_amount = phase_shift_amount + phase_shifted_ctrl;
assign phase_shifted_clk = clk << phase_shifted_amount;

// Output the phase-shifted clock signal
assign clk_out = phase_shifted_clk;

endmodule