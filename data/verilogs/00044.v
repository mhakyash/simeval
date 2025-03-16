module counter (
  input clk,
  input rst,
  input enable,
  output reg done,
  output reg [3:0] out
);

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      out <= 4'b0;
      done <= 1'b0;
    end
    else if (enable) begin
      out <= out + 1;
      done <= 1'b0;
    end
    else begin
      done <= 1'b1;
    end
  end

endmodule