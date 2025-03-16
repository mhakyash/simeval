module up_down_counter (
    input CLK,
    input UP,
    input DOWN,
    input LOAD,
    input [3:0] in,
    output reg [3:0] OUT
);

    always @(posedge CLK) begin
        if (LOAD) begin
            OUT <= in;
        end else if (UP) begin
            if (OUT == 4'b1111) begin
                OUT <= 4'b0000;
            end else begin
                OUT <= OUT + 1;
            end
        end else if (DOWN) begin
            if (OUT == 4'b0000) begin
                OUT <= 4'b1111;
            end else begin
                OUT <= OUT - 1;
            end
        end
    end

endmodule