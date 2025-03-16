module reg_ena_rst (
  input clk,
  input ena,
  input d,
  input rst,
  output reg q
);

  always @(posedge clk) begin
    if (rst) begin
      q <= 1'b0;
    end else if (ena) begin
      q <= d;
    end
  end

endmodule