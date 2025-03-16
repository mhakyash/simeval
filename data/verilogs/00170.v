module magnitude_comparator_4bit (
    input [3:0] A, B,
    output EQ, GT, LT
);

    wire [3:0] diff;
    assign diff = A + (~B + 1);

    assign EQ = (diff == 4'b0);
    assign GT = (diff[3] == 1'b0) && (diff != 4'b0);
    assign LT = (diff[3] == 1'b1);

endmodule