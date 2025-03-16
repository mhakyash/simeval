module comparator(A, B, result);
  input [3:0] A, B;
  output [1:0] result;
  
  wire [3:0] diff;
  assign diff = A - B;
  
  assign result[0] = (diff[3] == 1) ? 1 : 0; // check if A < B
  assign result[1] = (diff[3] == 0 && diff[2:0] != 0) ? 1 : 0; // check if A > B
  
  // if A = B, result is already initialized to 2'b00
endmodule