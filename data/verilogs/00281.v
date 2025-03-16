module delay_line (
  input clk,
  input in,
  output out
);

parameter d = 4; // number of clock cycles of delay

// Define a shift register with d stages
reg [d-1:0] sr;

always @(posedge clk) begin
  // Shift the input signal into the shift register
  sr <= {sr[d-2:0], in};
end

// Output the delayed signal from the d-th flip-flop
assign out = sr[d-1];

endmodule