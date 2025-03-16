module multiplier (
  input signed [n-1:0] A,
  input signed [n-1:0] B,
  input ctrl,
  output signed [n-1:0] P
);

parameter n = 8; // bit-width of input and output signals

reg signed [2*n-1:0] temp; // intermediate result for signed multiplication

always @(*) begin
  if (ctrl == 0) begin // unsigned multiplication
    P = A * B;
  end else begin // signed multiplication
    if (A[n-1] == B[n-1]) begin // both positive or both negative
      temp = A * B;
      if (temp[2*n-1] == 1) begin // overflow
        P = {1'b1, {n-1{1'b0}}}; // set to maximum signed value
      end else begin
        P = temp[n-1:0];
      end
    end else begin // one positive and one negative
      if (A[n-1] == 1) begin // A is negative
        temp = (~A + 1) * B;
      end else begin // B is negative
        temp = A * (~B + 1);
      end
      if (temp[2*n-1] == 1) begin // overflow
        P = {1'b1, {n-1{1'b0}}}; // set to maximum signed value
      end else begin
        P = ~temp[n-1:0] + 1; // two's complement to get signed result
      end
    end
  end
end

endmodule