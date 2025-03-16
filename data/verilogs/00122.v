module addsub_16bit (
  input clk,
  input reset,
  input [15:0] a,
  input [15:0] b,
  input sub,
  output [15:0] result,
  output overflow
);

reg [15:0] temp;
reg carry;
reg [15:0] twos_complement_b;

assign overflow = (result[15] != temp[15]);

always @(posedge clk, posedge reset) begin
  if (reset) begin
    temp <= 16'b0;
    carry <= 1'b0;
  end else begin
    if (sub) begin
      twos_complement_b <= ~b + 16'b1;
      temp <= a + twos_complement_b + carry;
    end else begin
      temp <= a + b + carry;
    end

    carry <= ((a[15] & b[15]) | (b[15] & ~temp[15]) | (~temp[15] & a[15]));
  end
end

assign result = temp;

endmodule
