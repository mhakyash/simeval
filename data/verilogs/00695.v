module fifo(
  input clk, reset, en, wr, rd,
  input [31:0] din,
  output [31:0] dout,
  output full, empty
);

  parameter DW = 32; // data width
  parameter DEPTH = 64; // depth of the FIFO
  parameter ADDR_WIDTH = $clog2(DEPTH); // address width
  
  reg [DW-1:0] mem [0:DEPTH-1]; // memory array
  reg [ADDR_WIDTH-1:0] head, tail; // head and tail pointers
  
  assign full = (tail == head-1) || (tail == head+(DEPTH-1)); // FIFO full condition
  assign empty = (tail == head); // FIFO empty condition
  
  always @(posedge clk) begin
    if (reset) begin // reset FIFO
      head <= 0;
      tail <= 0;
    end else if (en) begin
      if (wr && !full) begin // write to FIFO
        mem[tail] <= din;
        tail <= (tail == DEPTH-1) ? 0 : tail + 1; // increment tail pointer
      end else if (rd && !empty) begin // read from FIFO
        dout <= mem[head];
        head <= (head == DEPTH-1) ? 0 : head + 1; // increment head pointer
      end
    end
  end
  
endmodule