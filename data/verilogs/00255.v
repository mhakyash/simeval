module top_module (
    input CLK,
    input SHIFT,
    input [3:0] in_0,
    input [3:0] in_1,
    input [3:0] in_2,
    input [3:0] in_3,
    input [1:0] sel,
    output reg [3:0] out
); 
// Output of the barrel shifter
wire [7:0] SHIFTED_DATA;
// Output of the 4-to-1 multiplexer
wire [3:0] MUX_OUT;
// Functional module that performs bitwise OR operation on SHIFTED_DATA and MUX_OUT
wire [3:0] FINAL_OUTPUT;
// Barrel Shifter module instance
barrel_shifter bs_inst(
    .CLK(CLK),
    .SHIFT(SHIFT),
    .DATA(in_0),
    .Q(SHIFTED_DATA)
);
// 4-to-1 Multiplexer module instance
mux_4to1 mux_inst(
    .in_0(in_0),
    .in_1(in_1),
    .in_2(in_2),
    .in_3(in_3),
    .sel(sel),
    .out(MUX_OUT)
);
// Functional module instance
or_functional_module or_inst(
    .INPUT_1(SHIFTED_DATA),
    .INPUT_2(MUX_OUT),
    .OUTPUT(FINAL_OUTPUT)
);
// Output is the final output of the functional module
assign out = FINAL_OUTPUT;

endmodule

module barrel_shifter (
    input CLK,
    input SHIFT,
    input [3:0] DATA,
    output reg [7:0] Q
);
always @(posedge CLK) begin
    if (SHIFT) begin
        Q <= {DATA, 4'b0000};
    end else begin
        Q <= {4'b0000, DATA};
    end
end

endmodule

module mux_4to1 (
    input [3:0] in_0,
    input [3:0] in_1,
    input [3:0] in_2,
    input [3:0] in_3,
    input [1:0] sel,
    output reg [3:0] out
);
always @(*) begin
    case (sel)
        2'b00: out = in_0;
        2'b01: out = in_1;
        2'b10: out = in_2;
        2'b11: out = in_3;
    endcase
end

endmodule

module or_functional_module (
    input [3:0] INPUT_1,
    input [3:0] INPUT_2,
    output reg [3:0] OUTPUT
);
always @(*) begin
    OUTPUT = INPUT_1 | INPUT_2;
end

endmodule