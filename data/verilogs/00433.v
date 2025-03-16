module asynch_reset_set_reg (
  input D,
  input S,
  input R,
  input CLK,
  output Q,
  output QN
);

reg Q;

always @(posedge CLK or negedge R or negedge S) begin
  if (!R) begin
    Q <= 1'b0;
  end else if (!S) begin
    Q <= 1'b1;
  end else begin
    Q <= D;
  end
end

assign QN = ~Q;

endmodule