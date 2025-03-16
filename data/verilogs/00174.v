module binary_up_counter (
  input clk,
  input reset,
  output reg [n-1:0] count
);

parameter n = 4; // number of bits in the binary number

always @(posedge clk) begin
  if (reset) begin
    count <= 0;
  end else begin
    count <= count + 1;
  end
end

endmodule