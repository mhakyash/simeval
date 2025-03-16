module d_ff_sr(
    output reg Q,
    input D,
    input clk,
    input sr
);

    always @(posedge clk) begin
        if (sr) begin
            Q <= 1'b0;
        end else begin
            Q <= D;
        end
    end

endmodule