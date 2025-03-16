module alu_p #(parameter width = 8)
       (output reg [width:0] out,
        input [width-1:0] a,
        input [width-1:0] b,
        input c_in,
        input [2:0] op);

    reg [width:0] result;

    always @* begin
        case (op)
            3'b000: result = a + b + c_in;
            3'b001: result = a - b - ~c_in;
            3'b010: result = a & b;
            3'b011: result = a | b;
            3'b100: result = a ^ b;
            3'b101: result = ~a;
            3'b110: result = ~(a ^ b);
            default: result = 0;
        endcase
    end

    assign out = result[width:0];

endmodule