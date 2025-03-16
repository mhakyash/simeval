module dff (
    input CLK,
    input D,
    input SCD,
    input SCE,
    input RESET_B,
    output Q,
    output Q_B
);

    reg Q;
    reg Q_B;

    always @(posedge CLK or negedge RESET_B) begin
        if (!RESET_B) begin
            Q <= 1'b0;
            Q_B <= 1'b1;
        end else if (SCD) begin
            Q <= 1'b1;
            Q_B <= 1'b0;
        end else if (SCE) begin
            Q <= D;
            Q_B <= ~D;
        end
    end

endmodule