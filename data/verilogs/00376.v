module glitch_free_mux (
  input clk1,
  input clk2,
  input ctl,
  output reg clk_out
);

  reg [1:0] sync_clk1, sync_clk2;
  reg [1:0] sync_ctl;
  reg [1:0] sync_out;

  always @(posedge clk1 or posedge clk2) begin
    sync_clk1 <= {sync_clk1[0], clk1};
    sync_clk2 <= {sync_clk2[0], clk2};
  end

  always @(posedge ctl) begin
    sync_ctl <= {sync_ctl[0], ctl};
  end

  always @(posedge sync_clk1[1] or posedge sync_clk2[1]) begin
    if (sync_ctl[1] == 1'b1) begin
      sync_out <= sync_clk1;
    end else begin
      sync_out <= sync_clk2;
    end
  end

  always @(posedge sync_out[0]) begin
    clk_out <= sync_out[1];
  end

endmodule