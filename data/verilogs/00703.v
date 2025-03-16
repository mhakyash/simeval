module clock_wizard
(
  input         clk_in1,
  output        clk_out1,
  output        clk_out2,
  input         resetn,
  output        locked
);

  wire        clkfbout;
  wire        clkfbout_buf;
  wire        clk_out1_buf;
  wire        clk_out2_buf;
  wire        locked_int;

  // Input buffering
  IBUF ibufg_inst
  (
    .O(clk_in1_buf),
    .I(clk_in1)
  );

  // Clocking PRIMITIVE
  MMCME2_ADV mmcm_adv_inst
  (
    .CLKFBOUT            (clkfbout),
    .CLKFBOUTB           (),
    .CLKOUT0             (clk_out1_buf),
    .CLKOUT0B            (),
    .CLKOUT1             (clk_out2_buf),
    .CLKOUT1B            (),
    .CLKOUT2             (),
    .CLKOUT2B            (),
    .CLKOUT3             (),
    .CLKOUT3B            (),
    .CLKOUT4             (),
    .CLKOUT5             (),
    .CLKOUT6             (),
    .CLKFBIN             (clkfbout_buf),
    .CLKIN1              (clk_in1_buf),
    .CLKIN2              (),
    .CLKINSEL            (1'b1),
    .DADDR               (7'h0),
    .DCLK                (1'b0),
    .DEN                 (1'b0),
    .DI                  (16'h0),
    .DO                  (),
    .DRDY                (),
    .DWE                 (1'b0),
    .PSCLK               (1'b0),
    .PSEN                (1'b0),
    .PSINCDEC            (1'b0),
    .PSDONE              (),
    .LOCKED              (locked_int),
    .CLKINSTOPPED        (),
    .CLKFBSTOPPED        (),
    .PWRDWN              (1'b0),
    .RST                 (~resetn)
  );

  // Output buffering
  BUFG clk_out1_buf_inst
  (
    .O(clk_out1),
    .I(clk_out1_buf)
  );

  BUFG clk_out2_buf_inst
  (
    .O(clk_out2),
    .I(clk_out2_buf)
  );

  assign locked = locked_int;

endmodule