module GlitchFreeClockMux (
  input [n-1:0] clk,
  input sel,
  output gclk
);

parameter n = 4; // number of input clock signals

reg [n-1:0] sync_clk;
reg [n-1:0] glitch_free_clk;

always @(posedge clk[0] or posedge clk[1] or posedge clk[2] or posedge clk[3] or posedge sel) begin
  // Compare the input clock signals and select the one with the best timing characteristics
  case(sel)
    0: sync_clk <= clk[0];
    1: sync_clk <= clk[1];
    2: sync_clk <= clk[2];
    3: sync_clk <= clk[3];
    default: sync_clk <= clk[0];
  endcase
end

// Synchronizer circuit to remove any glitches from the selected clock signal
always @(posedge sync_clk[0] or posedge sync_clk[1] or posedge sync_clk[2] or posedge sync_clk[3]) begin
  case(sel)
    0: glitch_free_clk <= sync_clk[0];
    1: glitch_free_clk <= sync_clk[1];
    2: glitch_free_clk <= sync_clk[2];
    3: glitch_free_clk <= sync_clk[3];
    default: glitch_free_clk <= sync_clk[0];
  endcase
end

assign gclk = glitch_free_clk;

endmodule