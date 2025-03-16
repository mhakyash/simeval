module counter
(
  input clk,
  input rst_n,
  output reg [3:0] counter_out
);

   always @(posedge clk or negedge rst_n) begin
      if (~rst_n) begin
         counter_out <= 4'b0000;
      end else begin
         counter_out <= counter_out + 1;
      end
   end

endmodule