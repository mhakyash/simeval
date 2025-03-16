module counter (
  input clk,
  input reset,
  input enable,
  input [3:0] set_value,
  output reg [3:0] count,
  output reg max_value_reached
);

  always @(posedge clk) begin
    if (reset) begin
      count <= 0;
      max_value_reached <= 0;
    end
    else if (enable) begin
      if (count == 15) begin
        count <= 0;
        max_value_reached <= 1;
      end
      else begin
        if (set_value != count)
          count <= set_value;
        else
          count <= count + 1;
        max_value_reached <= 0;
      end
    end
  end

endmodule
