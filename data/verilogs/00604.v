module binary_adder (a, b, sum, overflow);
input [3:0] a, b;
output [3:0] sum;
output overflow;

reg [3:0] sum;
reg overflow;

always @ (a or b)
begin
  sum[0] = a[0] ^ b[0];
  overflow = (a[0] & b[0]) | ((a[0] ^ b[0]) & sum[0]);
  
  sum[1] = a[1] ^ b[1] ^ sum[0];
  overflow = overflow | ((a[1] & b[1]) | ((a[1] ^ b[1]) & sum[1]));
  
  sum[2] = a[2] ^ b[2] ^ sum[1];
  overflow = overflow | ((a[2] & b[2]) | ((a[2] ^ b[2]) & sum[2]));
  
  sum[3] = a[3] ^ b[3] ^ sum[2];
  overflow = overflow | ((a[3] & b[3]) | ((a[3] ^ b[3]) & sum[3]));
end

endmodule