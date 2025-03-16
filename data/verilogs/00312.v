module DCT (
  input signed [15:0] in [0:n-1],
  output signed [15:0] out [0:n-1]
);

parameter n = 8; // number of input samples

integer i, k;
real sum;

always @(*) begin
  for (k = 0; k < n; k = k + 1) begin
    sum = 0;
    for (i = 0; i < n; i = i + 1) begin
      sum = sum + in[i] * $cos($pi * k * (2 * i + 1) / (2 * n));
    end
    out[k] = 2 * sum;
  end
end

endmodule

module IDCT (
  input signed [15:0] in [0:n-1],
  output signed [15:0] out [0:n-1]
);

parameter n = 8; // number of frequency coefficients

integer i, k;
real sum;

always @(*) begin
  for (i = 0; i < n; i = i + 1) begin
    sum = 0;
    for (k = 0; k < n; k = k + 1) begin
      sum = sum + in[k] * $cos($pi * k * (2 * i + 1) / (2 * n));
    end
    out[i] = 2 * sum / n;
  end
end

endmodule