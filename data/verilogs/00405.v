module d_ff_async (
  input D,
  input SET_B,
  input RESET_B,
  input CLK,
  output reg Q,
  output reg Q_N
);

  always @(posedge CLK or negedge SET_B or negedge RESET_B) begin
    if (!RESET_B) begin
      Q <= 1'b0;
      Q_N <= 1'b1;
    end else if (!SET_B) begin
      Q <= 1'b1;
      Q_N <= 1'b0;
    end else begin
      Q <= D;
      Q_N <= ~D;
    end
  end

endmodule