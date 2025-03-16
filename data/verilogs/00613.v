module alu (
    input [31:0] op1,
    input [31:0] op2,
    input [2:0] opcode,
    output reg [31:0] result
);

    always @* begin
        case(opcode)
            3'b000: result = op1 + op2; // add
            3'b001: result = op1 - op2; // subtract
            3'b010: result = op1 & op2; // bitwise AND
            3'b011: result = op1 | op2; // bitwise OR
            3'b100: result = op1 ^ op2; // bitwise XOR
            default: result = 0; // default to 0
        endcase
    end

endmodule