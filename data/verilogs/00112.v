module counter (
  input clk,
  input rst,
  input up_down,
  output reg [7:0] count
);

  always @(posedge clk) begin
    if (rst) begin
      count <= 8'd0;
    end else if (up_down) begin
      if (count == 8'd255) begin
        count <= 8'd0;
      end else begin
        count <= count + 1;
      end
    end else begin
      if (count == 8'd0) begin
        count <= 8'd255;
      end else begin
        count <= count - 1;
      end
    end
  end

endmodule