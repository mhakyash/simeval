module fifo_generator
  (WR_RST_BUSY,
   dout,
   empty,
   full,
   rd_data_count,
   wr_data_count,
   prog_empty,
   prog_full,
   rd_en,
   wr_clk,
   rd_clk,
   din,
   rst,
   wr_en);

  parameter DATA_WIDTH = 64;
  parameter ADDR_WIDTH = 10;
  parameter DEPTH = 2**ADDR_WIDTH;

  input rd_en;
  input wr_clk;
  input rd_clk;
  input [DATA_WIDTH-1:0] din;
  input rst;
  input wr_en;

  output WR_RST_BUSY;
  output [DATA_WIDTH-1:0] dout;
  output empty;
  output full;
  output [ADDR_WIDTH-1:0] rd_data_count;
  output [ADDR_WIDTH-1:0] wr_data_count;
  output prog_empty;
  output prog_full;

  reg [ADDR_WIDTH-1:0] wr_ptr;
  reg [ADDR_WIDTH-1:0] rd_ptr;
  reg [ADDR_WIDTH-1:0] data_count;
  reg [DATA_WIDTH-1:0] mem [0:DEPTH-1];
  reg empty;
  reg full;
  reg prog_empty;
  reg prog_full;
  reg WR_RST_BUSY;

  assign empty = (data_count == 0);
  assign full = (data_count == DEPTH);
  assign prog_empty = empty;
  assign prog_full = full;

  always @(posedge rd_clk) begin
    if (rd_en && !empty) begin
      dout <= mem[rd_ptr];
      rd_ptr <= rd_ptr + 1;
      data_count <= data_count - 1;
    end
  end

  always @(posedge wr_clk) begin
    if (wr_en && !full) begin
      mem[wr_ptr] <= din;
      wr_ptr <= wr_ptr + 1;
      data_count <= data_count + 1;
    end
  end

  always @(posedge wr_clk, posedge rd_clk, posedge rst) begin
    if (rst) begin
      wr_ptr <= 0;
      rd_ptr <= 0;
      data_count <= 0;
      empty <= 1;
      full <= 0;
      WR_RST_BUSY <= 1;
    end else begin
      WR_RST_BUSY <= 0;
    end
  end

  assign rd_data_count = data_count;
  assign wr_data_count = DEPTH - data_count;

endmodule