module calculator (
    input [3:0] A,
    input [3:0] B,
    input [1:0] OP,
    output [3:0] RESULT
);

parameter NUM_OPERATIONS = 4;

reg [3:0] result;

always @(*) begin
    case (OP)
        2'b00: result = A + B;
        2'b01: result = A - B;
        2'b10: result = A * B;
        2'b11: result = A / B;
    endcase
end

assign RESULT = result;

endmodule