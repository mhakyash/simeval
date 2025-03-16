module mul_add(
  input clk,
  input [7:0] a,
  input [7:0] b,
  input [7:0] c,
  output reg [15:0] sum,
  output reg [15:0] product
);
  reg [7:0] temp_product;
  reg [15:0] temp_sum;
  
  always @(posedge clk) begin
    // Calculate sum
    temp_sum <= a + b + c;
    sum <= temp_sum;
    
    // Calculate product
    temp_product <= a * b;
    product <= temp_product;
  end
endmodule