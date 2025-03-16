module up_down_counter_3bit (
    input CLK,
    input UP_DOWN,
    output reg [2:0] Q
);

    always @(posedge CLK) begin
        if (UP_DOWN) begin
            if (Q == 3'b111) begin
                Q <= 3'b000;
            end else begin
                Q <= Q + 1;
            end
        end else begin
            if (Q == 3'b000) begin
                Q <= 3'b111;
            end else begin
                Q <= Q - 1;
            end
        end
    end

endmodule