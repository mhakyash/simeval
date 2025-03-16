module wavelet_transform (
  input [n-1:0] in,
  output [m-1:0] out
);

parameter n = 8; // number of input samples
parameter m = 8; // number of output samples
parameter k = 4; // number of filter taps

reg signed [n-1:0] input_samples;
reg signed [m-1:0] output_samples;

reg signed [k-1:0] h0 = {0.4829629131445341, 0.8365163037378079, 0.2241438680420134, -0.1294095225512604};
reg signed [k-1:0] h1 = {-0.1294095225512604, -0.2241438680420134, 0.8365163037378079, -0.4829629131445341};

integer i, j;

always @ (posedge clk) begin
  for (i = 0; i < m; i = i + 2) begin
    output_samples[i] = 0;
    output_samples[i+1] = 0;
    for (j = 0; j < k; j = j + 1) begin
      if (i+j < n) begin
        output_samples[i] = output_samples[i] + h0[j] * input_samples[i+j];
        output_samples[i+1] = output_samples[i+1] + h1[j] * input_samples[i+j];
      end
    end
  end
end

endmodule