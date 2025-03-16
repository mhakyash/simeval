module magnitude_comparator_4bit (
    input [3:0] A,
    input [3:0] B,
    output EQ,
    output GT,
    output LT
);

    reg [2:0] result;

    always @* begin
        case (A > B)
            1'b0: result = (A == B) ? 3'b100 : 3'b001;
            1'b1: result = 3'b010;
        endcase
    end

    assign EQ = (result == 3'b100);
    assign GT = (result == 3'b010);
    assign LT = (result == 3'b001);

endmodule