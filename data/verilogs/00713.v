module dff_negedge_reset (
    input D,
    input C,
    input R,
    output reg Q
);

always @ (negedge C) begin
    if (R) begin
        Q <= 1'b0;
    end else begin
        Q <= D;
    end
end

endmodule