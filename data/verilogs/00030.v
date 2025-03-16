module up_down_counter_adder (
  input clk,
  input reset,
  input up_down,
  input [2:0] value,
  input slowena,
  input select,
  output reg [3:0] count,
  output reg [3:0] sum
);

  reg [3:0] count_reg;
  reg [3:0] sum_reg;
  wire [3:0] adder_out;

  always @(posedge clk) begin
    if (reset) begin
      count_reg <= 4'b0000;
      sum_reg <= 4'b0000;
    end else begin
      if (up_down) begin
        count_reg <= count_reg + 1;
      end else begin
        count_reg <= count_reg - 1;
      end
      if (!slowena) begin
        sum_reg <= count_reg + value;
      end
    end
  end

  assign adder_out = count_reg + value;

  always @(*) begin
    if (select) begin
      count = count_reg;
      sum = 4'bZZZZ;
    end else begin
      count = 4'bZZZZ;
      sum = sum_reg;
    end
  end

endmodule