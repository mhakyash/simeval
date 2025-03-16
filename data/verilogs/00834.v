module fifo_buffer (
  input clk,
  input [7:0] fifo_wdata,
  input fifo_wr,
  output fifo_FF,
  output [7:0] r_dat,
  output wfifo_empty,
  output [5:0] wfifo_used
);

  reg [7:0] fifo [0:7];
  reg wr_ptr = 0;
  reg rd_ptr = 0;
  reg [5:0] used = 0;
  wire full = (used == 8);
  wire empty = (used == 0);

  assign fifo_FF = full;
  assign wfifo_empty = empty;
  assign wfifo_used = used;

  always @(posedge clk) begin
    if (fifo_wr && !full) begin
      fifo[wr_ptr] <= fifo_wdata;
      wr_ptr <= wr_ptr + 1;
      used <= used + 1;
    end
    if (!empty) begin
      r_dat <= fifo[rd_ptr];
      rd_ptr <= rd_ptr + 1;
      used <= used - 1;
    end
  end

endmodule