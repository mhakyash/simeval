module manchester (
  input [n-1:0] in,
  output [2*n-1:0] out
);

parameter n = 4; // number of input signals

// Encoder
genvar i;
generate
  for (i = 0; i < n; i = i + 1) begin : manchester_encoder
    reg clk;
    always @(posedge clk) begin
      out[2*i] <= in[i] ^ clk;
      out[2*i+1] <= in[i] ^ ~clk;
    end
  end
endgenerate

// Decoder
genvar j;
generate
  for (j = 0; j < n; j = j + 1) begin : manchester_decoder
    reg clk;
    always @(posedge clk) begin
      if (out[2*j] ^ out[2*j+1]) begin
        in[j] <= out[2*j];
      end
    end
  end
endgenerate

endmodule