module five_to_one (
    input A,
    input B,
    input C,
    input D,
    input E,
    output reg Y
);

always @(*) begin
    if (A) begin
        Y = 1;
    end else if (B) begin
        Y = 1;
    end else if (C) begin
        Y = 1;
    end else if (D && !E) begin
        Y = 1;
    end else if (!D && E) begin
        Y = 1;
    end else begin
        Y = 0;
    end
end

endmodule