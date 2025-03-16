module ODDR (
    input D1,
    input D2,
    input C,
    input CE,
    input R,
    output reg Q
);

always @(posedge C) begin
    if (CE == 1'b1) begin
        if (R == 1'b0) begin
            Q <= D1;
        end
        else begin
            Q <= D2;
        end
    end
end

endmodule