module fifo (
  input clk,
  input rst,
  input wr_en,
  input rd_en,
  input [7:0] data_in,
  output [7:0] data_out,
  output empty,
  output full
);

parameter depth = 16; // depth of the FIFO

reg [7:0] mem [0:depth-1]; // memory array
reg [4:0] wr_ptr = 0; // write pointer
reg [4:0] rd_ptr = 0; // read pointer
wire [4:0] next_wr_ptr = wr_ptr + 1; // next write pointer
wire [4:0] next_rd_ptr = rd_ptr + 1; // next read pointer
wire [4:0] num_items = wr_ptr - rd_ptr; // number of items in the FIFO
wire [4:0] next_num_items = num_items + (wr_en && ~rd_en) - (rd_en && ~wr_en); // next number of items in the FIFO

assign empty = (num_items == 0);
assign full = (num_items == depth);

always @(posedge clk) begin
  if (rst) begin
    wr_ptr <= 0;
    rd_ptr <= 0;
  end else begin
    if (wr_en && ~full) begin
      mem[wr_ptr] <= data_in;
      wr_ptr <= next_wr_ptr;
    end
    if (rd_en && ~empty) begin
      data_out <= mem[rd_ptr];
      rd_ptr <= next_rd_ptr;
    end
  end
end

endmodule