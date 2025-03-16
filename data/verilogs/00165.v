module bitwise_and_or(a, b, ctrl, and_out, or_out);
  input [31:0] a;
  input [31:0] b;
  input ctrl;
  output [31:0] and_out;
  output [31:0] or_out;

  reg [31:0] and_result;
  reg [31:0] or_result;

  always @(*) begin
    if (ctrl) begin
      and_result = a & b;
      or_result = 32'b0;
    end else begin
      and_result = 32'b1;
      or_result = a | b;
    end
  end

  assign and_out = and_result;
  assign or_out = or_result;
endmodule