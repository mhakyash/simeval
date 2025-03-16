module full_adder (
    input A,
    input B,
    input CI,
    output reg SUM,
    output reg COUT
);

    always @ (A or B or CI) begin
        SUM = A ^ B ^ CI;
        COUT = (A & B) | (B & CI) | (CI & A);
    end

endmodule