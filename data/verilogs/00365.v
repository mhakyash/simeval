module shift_register_gated (CLK, EN, TE, ENCLK);

  input CLK, EN, TE;
  output ENCLK;
  reg [6:0] shift_reg;

  assign ENCLK = EN;

  always @(posedge CLK) begin
    if (EN) begin
      shift_reg <= {shift_reg[5:0], TE};
    end
  end

endmodule