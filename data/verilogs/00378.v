module rx_fifo(
  rst,
  wr_clk,
  rd_clk,
  din,
  wr_en,
  rd_en,
  dout,
  full,
  empty,
  rd_data_count
);

input rst;
input wr_clk;
input rd_clk;
input [7 : 0] din;
input wr_en;
input rd_en;
output [63 : 0] dout;
output full;
output empty;
output [7 : 0] rd_data_count;

reg [7:0] fifo_mem[0:15];
reg [3:0] rd_ptr = 0;
reg [3:0] wr_ptr = 0;
reg [7:0] rd_data_count_reg = 0;

assign full = (rd_ptr == wr_ptr) && rd_data_count_reg;
assign empty = (rd_ptr == wr_ptr) && !rd_data_count_reg;
assign rd_data_count = rd_data_count_reg;

always @(posedge wr_clk) begin
  if (rst) begin
    rd_ptr <= 0;
    wr_ptr <= 0;
    rd_data_count_reg <= 0;
  end else if (wr_en && !full) begin
    fifo_mem[wr_ptr] <= din;
    wr_ptr <= wr_ptr + 1;
    rd_data_count_reg <= rd_data_count_reg + 1;
  end
end

always @(posedge rd_clk) begin
  if (rst) begin
    rd_ptr <= 0;
    wr_ptr <= 0;
    rd_data_count_reg <= 0;
  end else if (rd_en && !empty) begin
    dout <= {fifo_mem[rd_ptr], {56{1'b0}}};
    rd_ptr <= rd_ptr + 1;
    rd_data_count_reg <= rd_data_count_reg - 1;
  end
end

endmodule