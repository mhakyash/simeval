module four_bit_multiplier (
  input [3:0] A,
  input [3:0] B,
  output [7:0] out
);

  reg [7:0] result;
  integer i;

  always @ (A or B) begin
    result = 0;
    for (i = 0; i < 4; i = i + 1) begin
      result = result + (B[i] * {A, 2'b0} << i);
    end
    out = result;
  end

endmodule
