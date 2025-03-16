module ripple_carry_adder_4bit (
    input [3:0] A,
    input [3:0] B,
    input carry_in,
    output reg [3:0] sum,
    output reg carry_out
);

    always @(*) begin
        sum[0] = A[0] ^ B[0] ^ carry_in;
        sum[1] = A[1] ^ B[1] ^ ((A[0] & B[0]) | (A[0] & carry_in) | (B[0] & carry_in));
        sum[2] = A[2] ^ B[2] ^ ((A[1] & B[1]) | (A[1] & A[0] & B[0]) | (A[1] & B[0] & carry_in) | (B[1] & A[0] & carry_in));
        sum[3] = A[3] ^ B[3] ^ ((A[2] & B[2]) | (A[2] & A[1] & B[1]) | (A[2] & B[1] & A[0]) | (A[2] & B[0] & carry_in) | (B[2] & A[1] & A[0]) | (B[2] & B[1] & carry_in));
        carry_out = (A[3] & B[3]) | (A[2] & B[2]) | (A[1] & B[1]) | (A[0] & B[0]) | ((A[2] | A[1] | A[0]) & B[3]) | ((A[1] | A[0]) & B[2]) | (A[0] & B[1]) | (carry_in & (A[3] | A[2] | A[1] | A[0] | B[3] | B[2] | B[1]));
    end

endmodule