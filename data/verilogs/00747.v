module calculator(
    input wire clk,
    input wire reset,
    input wire [7:0] A,
    input wire [7:0] B,
    input wire [2:0] op,
    output reg [7:0] result
);

always @(posedge clk) begin
    if(reset) begin
        result <= 8'h00;
    end
    else begin
        case(op)
            //Addition
            3'b000: begin
                result <= A + B;
            end
            //Subtraction
            3'b001: begin
                result <= A - B;
            end
            //Multiplication
            3'b010: begin
                result <= A * B;
            end
            //Division
            3'b011: begin
                result <= A / B;
            end
            default: begin
                result <= 8'h00;
            end
        endcase
    end
end

endmodule