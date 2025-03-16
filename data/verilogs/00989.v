module two_bit_comparator (
  input [1:0] A,
  input [1:0] B,
  output reg [1:0] Z
);

  always @* begin
    if (A > B) begin
      Z = 2'b01;
    end else if (A < B) begin
      Z = 2'b10;
    end else begin
      Z = 2'b11;
    end
  end

endmodule
