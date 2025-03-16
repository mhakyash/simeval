module shift_register (
  input clk,
  input load,
  input [7:0] in,
  input shift,
  output reg [7:0] out
);

  always @(posedge clk) begin
    if (load) begin
      out <= in;
    end else if (shift) begin
      out <= {out[6:0], 1'b0};
    end
  end

endmodule