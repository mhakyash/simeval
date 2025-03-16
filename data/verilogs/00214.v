module simple_calculator(
    clk,
    reset,
    ce,
    a,
    b,
    op,
    result);

parameter ADD = 2'b00;
parameter SUB = 2'b01;

input clk;
input reset;
input ce;
input [7:0] a;
input [7:0] b;
input [1:0] op;
output [7:0] result;

reg [7:0] result_reg;

always @(posedge clk) begin
    if (reset) begin
        result_reg <= 8'b0;
    end else if (ce) begin
        case (op)
            ADD: result_reg <= a + b;
            SUB: result_reg <= a - b;
        endcase
    end
end

assign result = result_reg;

endmodule