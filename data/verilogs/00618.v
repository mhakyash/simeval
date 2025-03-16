module byte_sum_and_multiply (
  input wire [15:0] in,
  output reg [15:0] out
);

  reg [7:0] upper_byte;
  reg [7:0] lower_byte;
  reg [15:0] sum;

  always @(*) begin
    upper_byte = in[15:8];
    lower_byte = in[7:0];
    sum = upper_byte + lower_byte;
    out = sum * 2;
  end

endmodule