module data_extract (
  input clk,
  input reset,
  input [31:0] data_in,
  output reg [15:0] data_out
);

always @(posedge clk) begin
  if (reset) begin
    data_out <= 16'b0;
  end else begin
    data_out <= data_in[15:0];
  end
end

endmodule