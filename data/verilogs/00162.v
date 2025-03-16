module fifo_64in_out_fifo_generator_top (
  input clk,
  input rst,
  input wr_en,
  input rd_en,
  input [63:0] din,
  output [63:0] dout,
  output empty,
  output valid,
  output full,
  output [11:0] rd_data_count
);

  wire [63:0] dout;
  wire empty;
  wire full;
  wire [11:0] rd_data_count;
  wire valid;

  fifo_64in_out_fifo_generator_ramfifo ramfifo (
    .din(din),
    .dout(dout),
    .empty(empty),
    .full(full),
    .rd_clk(clk),
    .rd_data_count(rd_data_count),
    .rd_en(rd_en),
    .rst(rst),
    .valid(valid),
    .wr_clk(clk),
    .wr_en(wr_en)
  );

  assign valid = !empty;
  assign full = !empty && (rd_data_count == 64'h400);
  assign empty = rd_data_count == 0;
  
  assign dout = empty ? 64'h0 : dout;

endmodule

module fifo_64in_out_fifo_generator_ramfifo (
  input clk,
  input rst,
  input wr_en,
  input rd_en,
  input [63:0] din,
  output [63:0] dout,
  output empty,
  output valid,
  output full,
  output [11:0] rd_data_count
);

  reg [63:0] mem [0:1023];
  reg [11:0] wr_ptr = 0;
  reg [11:0] rd_ptr = 0;
  reg [11:0] rd_data_count = 0;
  wire [11:0] next_wr_ptr;
  wire [11:0] next_rd_ptr;
  wire [11:0] next_rd_data_count;

  assign empty = rd_data_count == 0;
  assign full = rd_data_count == 1024;
  assign valid = rd_data_count > 0;
  assign dout = mem[rd_ptr];

  always @(posedge clk) begin
    if (rst) begin
      wr_ptr <= 0;
      rd_ptr <= 0;
      rd_data_count <= 0;
      mem <= 0;
    end else begin
      if (wr_en && !full) begin
        mem[wr_ptr] <= din;
        next_wr_ptr <= wr_ptr + 1;
      end else begin
        next_wr_ptr <= wr_ptr;
      end
      
      if (rd_en && !empty) begin
        next_rd_ptr <= rd_ptr + 1;
        next_rd_data_count <= rd_data_count - 1;
      end else begin
        next_rd_ptr <= rd_ptr;
        next_rd_data_count <= rd_data_count;
      end
      
      wr_ptr <= next_wr_ptr;
      rd_ptr <= next_rd_ptr;
      rd_data_count <= next_rd_data_count;
    end
  end

endmodule