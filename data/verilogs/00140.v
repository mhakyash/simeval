module fifo_buffer
  #(parameter DATA_WIDTH = 32,
    parameter ADDR_WIDTH = 13)
  (
    input rd_clk,
    input wr_clk,
    input tmp_ram_rd_en,
    input [0:0] WEBWE,
    input [DATA_WIDTH-1:0] Q,
    output reg [DATA_WIDTH-1:0] dout,
    output reg [ADDR_WIDTH-1:0] count_d1_reg
  );

  reg [DATA_WIDTH-1:0] mem [0:(1<<ADDR_WIDTH)-1];
  reg [ADDR_WIDTH-1:0] head_ptr = 0;
  reg [ADDR_WIDTH-1:0] tail_ptr = 0;
  reg [ADDR_WIDTH-1:0] count = 0;

  always @(posedge wr_clk) begin
    if (WEBWE) begin
      mem[head_ptr] <= Q;
      head_ptr <= (head_ptr == (1<<ADDR_WIDTH)-1) ? 0 : head_ptr + 1;
      count <= count + 1;
    end
  end

  always @(posedge rd_clk) begin
    if (tmp_ram_rd_en && count > 0) begin
      dout <= mem[tail_ptr];
      tail_ptr <= (tail_ptr == (1<<ADDR_WIDTH)-1) ? 0 : tail_ptr + 1;
      count <= count - 1;
    end
  end

  always @(posedge wr_clk or posedge rd_clk) begin
    count_d1_reg <= count;
  end

endmodule