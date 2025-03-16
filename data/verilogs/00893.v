module bitwise_and (
    input [3:0] A,
    input [3:0] B,
    output [3:0] Y
);

    // Perform bitwise AND operation using for loop
    integer i;
    always @(*) begin
        for (i = 0; i < 4; i = i + 1) begin
            Y[i] = A[i] & B[i];
        end
    end

endmodule