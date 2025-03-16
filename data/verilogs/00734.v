module d_ff_async (
    input D,
    input CLK,
    input SET_B,
    input RESET_B,
    output reg Q,
    output reg Q_N
);

    always @(posedge CLK or negedge SET_B or negedge RESET_B) begin
        if (!SET_B) begin
            Q <= 1'b1;
        end else if (!RESET_B) begin
            Q <= 1'b0;
        end else begin
            Q <= D;
        end
    end
    
    assign Q_N = ~Q;

endmodule