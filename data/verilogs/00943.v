module multiplier (
    A,
    B,
    out
);

    input [15:0] A;
    input [15:0] B;
    output [31:0] out;

    assign out = A * B;

    always @ (A, B) begin
        out <= A * B;
    end

endmodule