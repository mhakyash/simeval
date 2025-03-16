module binary_adder(
    input [3:0] A,
    input [3:0] B,
    input CIN,
    output reg [3:0] S,
    output reg COUT
);

    reg CARRY;
    
    always @(*) begin
        S[0] = A[0] ^ B[0] ^ CIN;
        CARRY = (A[0] & B[0]) | (A[0] & CIN) | (B[0] & CIN);
        S[1] = A[1] ^ B[1] ^ CARRY;
        CARRY = (A[1] & B[1]) | (A[1] & CARRY) | (B[1] & CARRY);
        S[2] = A[2] ^ B[2] ^ CARRY;
        CARRY = (A[2] & B[2]) | (A[2] & CARRY) | (B[2] & CARRY);
        S[3] = A[3] ^ B[3] ^ CARRY;
        COUT = (A[3] & B[3]) | (A[3] & CARRY) | (B[3] & CARRY);
    end

endmodule