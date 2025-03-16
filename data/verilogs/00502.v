module fifo_24bit(
  input clk,
  input rst,
  input [23:0] din,
  input wr_en,
  input rd_en,
  output [23:0] dout,
  output full,
  output empty
);

  // Parameters
  parameter ADDR_WIDTH = 13;
  parameter DATA_WIDTH = 24;
  parameter FIFO_DEPTH = 4096;

  // Internal signals
  reg [ADDR_WIDTH-1:0] wr_ptr;
  reg [ADDR_WIDTH-1:0] rd_ptr;
  reg [ADDR_WIDTH-1:0] mem_addr;
  reg [DATA_WIDTH-1:0] mem [0:FIFO_DEPTH-1];
  wire [ADDR_WIDTH-1:0] next_wr_ptr;
  wire [ADDR_WIDTH-1:0] next_rd_ptr;
  wire full_flag;
  wire empty_flag;

  // Full and empty flags
  assign full = full_flag;
  assign empty = empty_flag;

  // Write pointer
  always @(posedge clk) begin
    if (rst) begin
      wr_ptr <= 0;
    end else if (wr_en && !full_flag) begin
      wr_ptr <= next_wr_ptr;
    end
  end

  // Read pointer
  always @(posedge clk) begin
    if (rst) begin
      rd_ptr <= 0;
    end else if (rd_en && !empty_flag) begin
      rd_ptr <= next_rd_ptr;
    end
  end

  // Next write pointer
  assign next_wr_ptr = (wr_ptr == FIFO_DEPTH-1) ? 0 : wr_ptr + 1;

  // Next read pointer
  assign next_rd_ptr = (rd_ptr == FIFO_DEPTH-1) ? 0 : rd_ptr + 1;

  // Full and empty flags
  assign full_flag = (next_wr_ptr == rd_ptr);
  assign empty_flag = (wr_ptr == rd_ptr);

  // Memory address
  always @(*) begin
    mem_addr = (wr_en && !full_flag) ? wr_ptr : rd_ptr;
  end

  // Read and write operations
  always @(posedge clk) begin
    if (rst) begin
      mem <= 0;
    end else if (wr_en && !full_flag) begin
      mem[mem_addr] <= din;
    end else if (rd_en && !empty_flag) begin
      dout <= mem[mem_addr];
    end
  end

endmodule