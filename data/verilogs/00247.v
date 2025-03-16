module shift_register (
  input clk,
  input rst,
  input shen,
  input [7:0] din,
  output reg [7:0] dout
);

reg [7:0] shift_reg;

always @(posedge clk) begin
  if (rst) begin
    shift_reg <= 8'b0;
    dout <= 8'b0;
  end
  else if (shen) begin
    shift_reg <= {shift_reg[6:0], din};
    dout <= shift_reg;
  end
end

endmodule
