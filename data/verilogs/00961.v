module dff (
    input D,
    input C,
    input S,
    input R,
    output reg Q
);

    always @(posedge C) begin
        if (S) begin
            Q <= 1'b1;
        end else if (R) begin
            Q <= 1'b0;
        end else begin
            Q <= D;
        end
    end

endmodule