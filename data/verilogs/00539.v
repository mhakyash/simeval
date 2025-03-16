module calculator(
  input clk,
  input reset,
  input [1:0] operation,
  input go,
  input [31:0] a,
  input [31:0] b,
  output [31:0] sum,
  output [31:0] difference,
  output [31:0] product,
  output [31:0] quotient
);

  reg [31:0] a_reg, b_reg;
  reg [1:0] operation_reg;
  reg [31:0] sum_reg, difference_reg, product_reg, quotient_reg;
  
  always @(posedge clk) begin
    if (reset) begin
      a_reg <= 0;
      b_reg <= 0;
      operation_reg <= 0;
      sum_reg <= 0;
      difference_reg <= 0;
      product_reg <= 0;
      quotient_reg <= 0;
    end else begin
      a_reg <= a;
      b_reg <= b;
      operation_reg <= operation;
      if (go) begin
        case (operation_reg)
          2'b00: sum_reg <= a_reg + b_reg;
          2'b01: difference_reg <= a_reg - b_reg;
          2'b10: product_reg <= a_reg * b_reg;
          2'b11: begin
            if (b_reg == 0) begin
              quotient_reg <= 0;
            end else begin
              quotient_reg <= a_reg / b_reg;
            end
          end
        endcase
      end
    end
  end
  
  assign sum = sum_reg;
  assign difference = difference_reg;
  assign product = product_reg;
  assign quotient = quotient_reg;
  
endmodule