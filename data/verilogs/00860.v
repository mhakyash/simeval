module fifo_generator
  #(parameter DATA_WIDTH = 8, parameter DEPTH = 16)
  (
    input clk,
    input rst,
    input wr_en,
    input [DATA_WIDTH-1:0] wr_data,
    input rd_en,
    output reg [DATA_WIDTH-1:0] rd_data,
    output reg full,
    output reg empty
  );

  reg [DATA_WIDTH-1:0] buffer [DEPTH-1:0];
  reg [DATA_WIDTH-1:0] rd_data_reg;
  reg [DEPTH-1:0] wr_ptr;
  reg [DEPTH-1:0] rd_ptr;
  reg [DEPTH:0] count;

  always @(posedge clk) begin
    if (rst) begin
      wr_ptr <= 0;
      rd_ptr <= 0;
      count <= 0;
      rd_data_reg <= 0;
      full <= 0;
      empty <= 1;
    end else begin
      if (wr_en && count < DEPTH) begin
        buffer[wr_ptr] <= wr_data;
        wr_ptr <= wr_ptr + 1;
        count <= count + 1;
        empty <= 0;
        if (count == DEPTH) begin
          full <= 1;
        end
      end

      if (rd_en && count > 0) begin
        rd_data_reg <= buffer[rd_ptr];
        rd_ptr <= rd_ptr + 1;
        count <= count - 1;
        full <= 0;
        if (count == 0) begin
          empty <= 1;
        end
      end
    end
  end

  assign rd_data = rd_data_reg;

endmodule