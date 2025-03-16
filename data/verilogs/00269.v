module addsub (
  input [3:0] A,
  input [3:0] B,
  input C,
  output reg [3:0] R,
  output reg Cout
);

  always @(*) begin
    if (C == 1) begin
      R = A - B;
      Cout = (A < B) ? 0 : 1;
    end else begin
      R = A + B;
      Cout = (R[4] == 1) ? 1 : 0;
    end
  end

endmodule