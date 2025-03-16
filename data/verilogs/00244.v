module clock_gate (
  input CLK,
  input EN,
  input TE,
  output reg ENCLK
);

  reg gated_clk;

  always @(posedge CLK) begin
    if (EN) begin
      gated_clk <= ~TE;
      ENCLK <= gated_clk;
    end else begin
      ENCLK <= 0;
    end
  end

endmodule