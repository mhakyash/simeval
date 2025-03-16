module signExt (
    input [15:0] inst,
    output reg [31:0] data
);

    always @* begin
        if (inst[15] == 1) begin
            data = {16'hffff, inst};
        end else begin
            data = {16'h0000, inst};
        end
    end

endmodule