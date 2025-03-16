module Comparator (
  input [n-1:0] a,
  input [n-1:0] b,
  output eq,
  output gt,
  output lt
);

parameter n = 8; // number of bits in input numbers

reg [2:0] result;

always @(*) begin
  if (a == b) begin
    result = 3'b001; // a equals b
  end else if (a > b) begin
    result = 3'b010; // a is greater than b
  end else begin
    result = 3'b100; // a is less than b
  end
end

assign eq = (result == 3'b001);
assign gt = (result == 3'b010);
assign lt = (result == 3'b100);

endmodule