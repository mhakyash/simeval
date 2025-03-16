module mux_logic (
    input [2:0] sel, 
    input [3:0] data0,
    input [3:0] data1,
    input [3:0] data2,
    input [3:0] data3,
    input [3:0] data4,
    input [3:0] data5,
    input [3:0] in1,
    input [3:0] in2,
    input [3:0] in3,
    input [3:0] in4,
    output reg [3:0] out_and,
    output reg [3:0] out_or,
    output reg [3:0] out_xor,
    output reg [3:0] final_output
);

reg [3:0] mux_output;

always @(*) begin
    case (sel)
        3'b000: mux_output = data0;
        3'b001: mux_output = data1;
        3'b010: mux_output = data2;
        3'b011: mux_output = data3;
        3'b100: mux_output = data4;
        3'b101: mux_output = data5;
        default: mux_output = 4'b0000;
    endcase
end

assign out_and = in1 & in2 & in3 & in4;
assign out_or = in1 | in2 | in3 | in4;
assign out_xor = in1 ^ in2 ^ in3 ^ in4;

always @(mux_output, out_and, out_or, out_xor) begin
    case (sel)
        3'b000: final_output = mux_output & out_and;
        3'b001: final_output = mux_output | out_or;
        3'b010: final_output = mux_output ^ out_xor;
        default: final_output = 4'b0000;
    endcase
end

endmodule