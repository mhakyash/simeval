module up_down_counter (
    input CLK,
    input RESET,
    input DIR,
    output reg [2:0] Q
);

    always @(posedge CLK) begin
        if (RESET) begin
            Q <= 3'b0;
        end else if (DIR == 1'b0) begin
            Q <= Q + 1;
        end else begin
            Q <= Q - 1;
        end
    end

endmodule