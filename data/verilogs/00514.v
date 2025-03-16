module adder(A, B, sum);
  input [3:0] A, B;
  output reg [4:0] sum;
  
  always @* begin
    sum = A + B;
    if (sum > 15) begin
      sum = sum[3:0];
    end
  end
endmodule

module adder_tb;
  reg [3:0] A, B;
  wire [4:0] sum;
  
  adder dut(.A(A), .B(B), .sum(sum));
  
  initial begin
    $monitor("A=%b, B=%b, sum=%b", A, B, sum);
    
    A = 4'b0000; B = 4'b0000; #10;
    A = 4'b0000; B = 4'b0001; #10;
    A = 4'b0001; B = 4'b0000; #10;
    A = 4'b0001; B = 4'b0001; #10;
    A = 4'b1111; B = 4'b0001; #10;
    A = 4'b1111; B = 4'b1111; #10;
    
    $finish;
  end
endmodule