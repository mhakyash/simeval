module adler_checksum (
  input [n-1:0] data_in,
  output [15:0] adler_out
);

parameter n = 16; // number of input data values

reg [15:0] s1 = 16'h0001; // initialize s1 to 1
reg [15:0] s2 = 16'h0001; // initialize s2 to 1

integer i; // declare integer variable for loop index

// iterate over input data values and update s1 and s2
// using Adler checksum algorithm
always @(*) begin
  for (i = 0; i < n; i = i + 1) begin
    s1 = (s1 + data_in[i]) % 16'hFFFF;
    s2 = (s2 + s1) % 16'hFFFF;
  end
end

// compute Adler checksum using updated values of s1 and s2
assign adler_out = (s2 << 16) | s1;

endmodule