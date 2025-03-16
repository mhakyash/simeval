module fifo_async_4bit_wr_logic
   (full,
    prog_full,
    Q,
    O2,
    E,
    O3,
    wr_clk,
    rst_d2,
    wr_en,
    O1,
    I1,
    I2,
    rst_full_gen_i,
    I3,
    D);
  output full;
  output prog_full;
  output [2:0]Q;
  output [2:0]O2;
  output [0:0]E;
  output [3:0]O3;
  input wr_clk;
  input rst_d2;
  input wr_en;
  input [3:0]O1;
  input I1;
  input I2;
  input rst_full_gen_i;
  input [0:0]I3;
  input [0:0]D;

  reg [2:0] count;
  reg [2:0] count_next;
  reg [3:0] ram [0:7];
  reg [2:0] wr_ptr;
  reg [2:0] rd_ptr;
  reg full;
  reg prog_full;
  reg empty;
  reg [3:0] data_out;

  always @(posedge wr_clk) begin
    if (rst_d2) begin
      count <= 0;
      wr_ptr <= 0;
      rd_ptr <= 0;
      full <= 0;
      prog_full <= 0;
      empty <= 1;
    end else begin
      if (wr_en && !full) begin
        ram[wr_ptr] <= O1;
        wr_ptr <= wr_ptr + 1;
        count_next <= count + 1;
      end else begin
        count_next <= count;
      end
      
      if (I1 && !full) begin
        full <= (count_next == 8);
        prog_full <= (count_next == 7);
        count <= count_next;
      end else if (I2 && !empty) begin
        empty <= (count_next == 1);
        rd_ptr <= rd_ptr + 1;
        count <= count_next - 1;
      end else if (I3) begin
        count <= 0;
        wr_ptr <= 0;
        rd_ptr <= 0;
        full <= 0;
        prog_full <= 0;
        empty <= 1;
      end else begin
        count <= count_next;
      end
    end
  end

  assign Q = count;
  assign O2 = {count[2], count[1], 0};
  assign E = empty;
  assign O3 = data_out;

  always @(*) begin
    data_out = ram[rd_ptr];
  end

endmodule