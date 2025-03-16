module fifo_buffer(
  input clk,
  input WEA,
  input tmp_ram_rd_en,
  input srst,
  input [9:0] Q,
  input [63:0] din,
  output reg [63:0] dout
);

  reg [63:0] buffer [0:15];
  reg [3:0] write_ptr = 0;
  reg [3:0] read_ptr = 0;
  reg [3:0] count = 0;

  always @(posedge clk) begin
    if (srst) begin
      write_ptr <= 0;
      read_ptr <= 0;
      count <= 0;
    end else begin
      if (WEA) begin
        buffer[write_ptr] <= din;
        write_ptr <= write_ptr + 1;
        count <= count + 1;
      end
      if (tmp_ram_rd_en && count > 0) begin
        dout <= buffer[read_ptr];
        read_ptr <= read_ptr + 1;
        count <= count - 1;
      end
    end
  end

endmodule