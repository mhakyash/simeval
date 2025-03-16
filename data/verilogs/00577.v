module mag_comparator (
  input [2:0] A,
  input [2:0] B,
  output reg [1:0] result
);

  always @(*) begin
    if (A == B) begin
      result = 2'b00;
    end else if (A > B) begin
      result = 2'b01;
    end else begin
      result = 2'b10;
    end
  end

endmodule
