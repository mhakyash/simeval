module PRNG (
  input clk,
  input rst,
  input [b-1:0] seed,
  output [b-1:0] rand
);

parameter b = 8; // number of bits in the random number.

reg [b-1:0] state;

always @(posedge clk) begin
  if (rst) begin
    state <= seed;
  end else begin
    state <= state * 1103515245 + 12345; // linear congruential formula
  end
end

assign rand = state;

endmodule