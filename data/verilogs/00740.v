module tb;

  // Instantiate the oserdes_test module
  oserdes_test #
  (
    .DATA_WIDTH(8),
    .DATA_RATE("SDR"),
    .ERROR_HOLD(4)
  ) dut
  (
    .CLK(CLK),
    .CLK1(CLK1),
    .CLK2(CLK2),
    .RST(RST),
    .IO_DAT(IO_DAT),
    .OSERDES_O(OSERDES_O)
  );

  // Define the clock signal
  reg CLK;
  initial CLK = 0;
  always #1 CLK = ~CLK;

  // Define the reset signal
  reg RST;
  initial RST = 1;
  always #10 RST = 0;

  // Define the data signal
  reg [7:0] IO_DAT;
  integer i;
  initial begin
    for (i = 0; i < 100; i = i + 1) begin
      IO_DAT = $random;
      #1;
    end
    $finish;
  end

  // Define the clock phases
  wire CLK1 = CLK;
  reg CLK2;
  always @(posedge CLK) CLK2 <= ~CLK2;

  // Dump all the signals to a VCD file
  initial begin
    $dumpfile("waveforms.vcd");
    $dumpvars;
  end

endmodule