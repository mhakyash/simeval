module memory_controller (
  input clk,
  input rst,
  input rd_en,
  input wr_en,
  input [31:0] addr,
  input [31:0] wr_data,
  output reg [31:0] rd_data
);

  reg [31:0] mem[0:1023]; // Memory array with 1024 32-bit words

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      rd_data <= 0;
      mem <= 0;
    end
    else begin
      if (rd_en) begin
        rd_data <= mem[addr];
      end
      if (wr_en) begin
        mem[addr] <= wr_data;
      end
    end
  end

endmodule