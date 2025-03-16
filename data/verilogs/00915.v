module clock_management
 (// Clock in ports
  input         CLK_IN1,
  // Clock out ports
  output        CLK_OUT1,
  output        CLK_OUT2,
  output        CLK_OUT3,
  output        CLK_OUT4,
  output        CLK_OUT5,
  // Status and control signals
  input         RESET,
  output        LOCKED
 );

  // Input buffering
  //------------------------------------
  IBUFG clkin1_buf
   (.O (clkin1),
    .I (CLK_IN1));

  // Clocking primitive
  //------------------------------------
  wire [15:0] do_unused;
  wire        drdy_unused;
  wire        clkfbout;
  wire        clkfbout_buf;
  wire        clkout5_unused;

  PLL_BASE
  #(.BANDWIDTH              ("OPTIMIZED"),
    .CLK_FEEDBACK           ("CLKFBOUT"),
    .COMPENSATION           ("SYSTEM_SYNCHRONOUS"),
    .DIVCLK_DIVIDE          (1),
    .CLKFBOUT_MULT          (20),
    .CLKFBOUT_PHASE         (0.000),
    .CLKOUT0_DIVIDE         (20),
    .CLKOUT0_PHASE          (0.000),
    .CLKOUT0_DUTY_CYCLE     (0.500),
    .CLKOUT1_DIVIDE         (6),
    .CLKOUT1_PHASE          (0.000),
    .CLKOUT1_DUTY_CYCLE     (0.500),
    .CLKOUT2_DIVIDE         (6),
    .CLKOUT2_PHASE          (315.000),
    .CLKOUT2_DUTY_CYCLE     (0.500),
    .CLKOUT3_DIVIDE         (3),
    .CLKOUT3_PHASE          (315.000),
    .CLKOUT3_DUTY_CYCLE     (0.500),
    .CLKOUT4_DIVIDE         (6),
    .CLKOUT4_PHASE          (0.000),
    .CLKOUT4_DUTY_CYCLE     (0.500),
    .CLKIN_PERIOD           (33.333),
    .REF_JITTER             (0.010))
  pll_base_inst
   (.CLKFBOUT              (clkfbout),
    .CLKOUT0               (),
    .CLKOUT1               (),
    .CLKOUT2               (),
    .CLKOUT3               (),
    .CLKOUT4               (),
    .CLKOUT5               (clkout5_unused),
    .LOCKED                (LOCKED),
    .RST                   (RESET),
    .CLKFBIN               (clkfbout_buf),
    .CLKIN                 (clkin1));

  // Output buffering
  //-----------------------------------
  BUFG clkf_buf
   (.O (clkfbout_buf),
    .I (clkfbout));

  BUFG clkout1_buf
   (.O   (CLK_OUT1),
    .I   (pll_base_inst.CLKOUT0));

  BUFG clkout2_buf
   (.O   (CLK_OUT2),
    .I   (pll_base_inst.CLKOUT1));

  BUFG clkout3_buf
   (.O   (CLK_OUT3),
    .I   (pll_base_inst.CLKOUT2));

  BUFG clkout4_buf
   (.O   (CLK_OUT4),
    .I   (pll_base_inst.CLKOUT3));

  BUFG clkout5_buf
   (.O   (CLK_OUT5),
    .I   (pll_base_inst.CLKOUT4));

endmodule