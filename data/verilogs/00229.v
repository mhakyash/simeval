module clock_gating (
  input CLK,
  input EN,
  input TE,
  output reg ENCLK
);

  always @ (posedge CLK) begin
    if (TE) begin
      ENCLK <= CLK;
    end else if (EN) begin
      ENCLK <= CLK;
    end else begin
      ENCLK <= 1'b0;
    end
  end

endmodule