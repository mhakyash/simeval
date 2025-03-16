module rxuart(
   input wire clk,
   input wire resetq,
   input wire uart_rx,      // UART recv wire
   input wire rd,           // read strobe
   output wire valid,       // has data 
   output wire [7:0] data   // data
);

  reg [4:0] bitcount;
  reg [7:0] shifter;

  // bitcount == 11111: idle
  //             0-17:  sampling incoming bits
  //             18:    character received

  // On starting edge, wait 3 half-bits then sample, and sample every 2 bits thereafter

  wire idle = &bitcount;
  assign valid = (bitcount == 18);

  wire sample;
  reg [2:0] hh = 3'b111;
  wire [2:0] hhN = {hh[1:0], uart_rx};
  wire startbit = idle & (hhN[2:1] == 2'b10);
  wire [7:0] shifterN = sample ? {hh[1], shifter[7:1]} : shifter;

  wire ser_clk;

  baudgen2 _baudgen(
    .clk(clk),
    .restart(startbit),
    .ser_clk(ser_clk));

  reg [4:0] bitcountN;
  always @*
    if (startbit)
      bitcountN = 0;
    else if (!idle & !valid & ser_clk)
      bitcountN = bitcount + 5'd1;
    else if (valid & rd)
      bitcountN = 5'b11111;
    else
      bitcountN = bitcount;

  // 3,5,7,9,11,13,15,17
  assign sample = (|bitcount[4:1]) & bitcount[0] & ser_clk;
  assign data = shifter;

  always @(negedge resetq or posedge clk)
  begin
    if (!resetq) begin
      hh <= 3'b111;
      bitcount <= 5'b11111;
      shifter <= 0;
    end else begin
      hh <= hhN;
      bitcount <= bitcountN;
      shifter <= shifterN;
    end
  end
endmodule