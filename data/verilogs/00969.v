module tr_clk_data (
  input clk,
  input clkx2,
  input jrst_n,
  input [35:0] tw,
  output reg tr_clk,
  output reg [17:0] tr_data
);

  reg [1:0] x;
  wire phase;

  always @(posedge clk or negedge jrst_n) begin
    if (~jrst_n) begin
      x[1:0] <= 2'b0;
      tr_clk <= 0;
      tr_data <= 0;
    end else begin
      x[0] <= ~x[1];
      x[1] <= x[0];
    end
  end

  always @(posedge clkx2 or negedge jrst_n) begin
    if (~jrst_n) begin
      tr_clk <= 0;
      tr_data <= 0;
    end else begin
      phase <= x[0] ^ x[1];
      tr_clk <= ~phase;
      tr_data <= phase ? tw[17:0] : tw[35:18];
    end
  end

endmodule