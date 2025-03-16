module fifo (
  input clk,
  input [68:0] data_in,
  input wr_en,
  input rd_en,
  input rst,
  output empty,
  output full,
  output [68:0] data_out
);

  reg [68:0] memory [0:31];
  reg [4:0] head;
  reg [4:0] tail;
  wire [4:0] count;
  assign count = (head >= tail) ? (head - tail) : (32 + head - tail);

  always @(posedge clk) begin
    if (rst) begin
      head <= 0;
      tail <= 0;
      empty <= 1;
      full <= 0;
    end else begin
      if (wr_en && !full) begin
        memory[head] <= data_in;
        head <= head + 1;
        if (head == 32) begin
          head <= 0;
        end
      end
      if (rd_en && !empty) begin
        data_out <= memory[tail];
        tail <= tail + 1;
        if (tail == 32) begin
          tail <= 0;
        end
      end
      empty <= (count == 0);
      full <= (count == 32);
    end
  end

endmodule