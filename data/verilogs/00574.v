module counter_2bit (
    input CLK,
    input RESET,
    output reg Q1,
    output reg Q0
);

    always @(posedge CLK) begin
        if (RESET) begin
            Q1 <= 0;
            Q0 <= 0;
        end else begin
            if (Q0 == 0 && Q1 == 0) begin
                Q0 <= 1;
            end else if (Q0 == 1 && Q1 == 0) begin
                Q0 <= 0;
                Q1 <= 1;
            end else if (Q0 == 0 && Q1 == 1) begin
                Q0 <= 1;
                Q1 <= 1;
            end else begin
                Q0 <= 0;
                Q1 <= 0;
            end
        end
    end

endmodule