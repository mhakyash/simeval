module twos_complement_adder (
    input [3:0] A,
    input [3:0] B,
    output reg [4:0] C
);

reg [3:0] sum1, sum2;
reg carry;

always @(A, B) begin
    sum1 = A + B;
end

always @(sum1) begin
    sum2 = sum1 + carry;
end

always @(sum2) begin
    if (sum2[3] == 1) begin
        C[4:0] = ~sum2 + 1;
    end else begin
        C[4:0] = sum2;
    end
end

always @(sum1) begin
    carry = (A[3] & B[3]) | (A[3] & ~sum1[3]) | (B[3] & ~sum1[3]);
end

endmodule