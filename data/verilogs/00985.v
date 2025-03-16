module clock_gate (
  input CLK,
  input EN,
  input TE,
  output reg ENCLK
);

  always @(*) begin
    if (TE) begin
      ENCLK <= 0;
    end else if (EN) begin
      ENCLK <= CLK;
    end else begin
      ENCLK <= 0;
    end
  end

endmodule