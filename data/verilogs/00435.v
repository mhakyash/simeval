module matrix_multiplier(
  input [7:0] a [0:3],
  input [7:0] b [0:3],
  input mode,
  output [15:0] result [0:3]
);

reg [15:0] temp [0:3];

genvar i, j, k;

// Multiply the matrices
generate
  for (i = 0; i < 4; i = i + 1) begin : ROW
    for (j = 0; j < 4; j = j + 1) begin : COL
      assign temp[i][j*8 +: 8] = 0;
      for (k = 0; k < 4; k = k + 1) begin : INNER
        if (mode == 1) begin
          // Two's complement multiplication
          assign temp[i][j*8 +: 8] = temp[i][j*8 +: 8] + $signed(a[i][k]) * $signed(b[k][j]);
        end else begin
          // Unsigned multiplication
          assign temp[i][j*8 +: 8] = temp[i][j*8 +: 8] + a[i][k] * b[k][j];
        end
      end
    end
  end
endgenerate

// Assign the result
assign result = temp;

endmodule