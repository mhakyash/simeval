module adder(A, B, result);
    input [7:0] A;
    input [7:0] B;
    output [15:0] result;
    
    wire [7:0] carry;
    wire [7:0] sum;
    
    assign sum[0] = A[0] ^ B[0];
    assign carry[0] = A[0] & B[0];
    
    genvar i;
    generate
        for (i = 1; i < 8; i = i + 1) begin
            assign sum[i] = A[i] ^ B[i] ^ carry[i-1];
            assign carry[i] = (A[i] & B[i]) | (A[i] & carry[i-1]) | (B[i] & carry[i-1]);
        end
    endgenerate
    
    assign result = {carry[7], sum};
    
endmodule