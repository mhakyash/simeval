module modulo (
  input [31:0] a,
  input [31:0] b,
  output reg [31:0] r
);

// Inputs
// a: dividend, b: divisor
// Outputs
// r: remainder

// Verilog code for modulo operator
always @(*) begin
  if (b == 0) begin
    r <= 0;
  end else begin
    r <= a % b;
  end
end

endmodule