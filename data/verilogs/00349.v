module binary_adder (A, B, S);
input [3:0] A;
input [3:0] B;
output [3:0] S;

wire [4:0] temp_sum;

assign temp_sum = A + B; //sum of A and B

always @(*) begin
    if(temp_sum > 15) //truncate if sum is greater than 15
        S = temp_sum[3:0];
    else
        S = temp_sum[3:0];
end

endmodule