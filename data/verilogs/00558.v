module dff_async_reset_set_enable(
    input D,
    input CLK,
    input RESET,
    input SET,
    input EN,
    output reg Q,
    output reg QBAR
);

    always @(posedge CLK or posedge RESET or posedge SET) begin
        if (RESET) begin
            Q <= 0;
            QBAR <= 1;
        end else if (SET) begin
            Q <= 1;
            QBAR <= 0;
        end else if (EN) begin
            Q <= D;
            QBAR <= ~D;
        end
    end

endmodule