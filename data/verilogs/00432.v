module my_clock_gate (
  input clk,
  input en,
  input te,
  output reg enclk
);

reg d;

always @(posedge clk) begin
  if (en) begin
    d <= 1'b1;
  end else begin
    d <= 1'b0;
  end
end

always @(posedge clk) begin
  if (en) begin
    if (te) begin
      enclk <= 1'b1;
    end else begin
      enclk <= 1'b0;
    end
  end
end

endmodule