module calculator(
    input clk,
    input [1:0] op,
    input [7:0] a,
    input [7:0] b,
    input reset,
    output reg [7:0] result,
    output reg valid
);

always @(posedge clk) begin
    if (reset) begin
        result <= 8'b0;
        valid <= 1'b0;
    end else begin
        case(op)
            2'b00: begin
                result <= a + b;
                valid <= 1'b1;
            end
            2'b01: begin
                result <= a - b;
                valid <= 1'b1;
            end
            2'b10: begin
                result <= a * b;
                valid <= 1'b1;
            end
            2'b11: begin
                result <= a / b;
                valid <= 1'b1;
            end
            default: begin
                valid <= 1'b0;
            end
        endcase
    end
end

endmodule