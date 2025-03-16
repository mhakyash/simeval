module nor_4to1_mux (
    input [3:0] data0,
    input [3:0] data1,
    input [3:0] data2,
    input [3:0] data3,
    input [1:0] sel,
    output reg [3:0] out
);

wire [3:0] nor0_out;
wire [3:0] nor1_out;
wire [3:0] nor2_out;
wire [3:0] nor3_out;

assign nor0_out = ~(data0 | data1);
assign nor1_out = ~(data2 | data3);
assign nor2_out = ~(nor0_out | nor1_out);
assign nor3_out = ~(sel[1] & nor0_out | sel[1] & nor1_out | sel[0] & nor2_out);

always @(*) begin
    case(sel)
        2'b00: out = 4'b0000;
        2'b01: out = nor0_out;
        2'b10: out = nor1_out;
        2'b11: out = nor3_out;
    endcase
end

endmodule

module nor_2to1_mux (
    input [3:0] data0,
    input [3:0] data1,
    input sel,
    output reg [3:0] out
);

wire [3:0] nor0_out;
wire [3:0] nor1_out;

assign nor0_out = ~(data0 | data1);
assign nor1_out = ~(sel & data1 | ~sel & data0);

always @(*) begin
    if(sel == 1'b0) out = 4'b0000;
    else out = nor0_out & nor1_out;
end

endmodule

module subtraction (
    input [3:0] a,
    input [3:0] b,
    output reg [3:0] out
);

assign out = a - b;

endmodule

module top_module (
    input [3:0] data0,
    input [3:0] data1,
    input [3:0] data2,
    input [3:0] data3,
    input [3:0] data4,
    input [3:0] data5,
    input [1:0] sel4,
    input [0:0] sel2,
    output reg [3:0] out
);

wire [3:0] mux4_out;
wire [3:0] mux2_out;

nor_4to1_mux mux4(
    .data0(data0),
    .data1(data1),
    .data2(data2),
    .data3(data3),
    .sel(sel4),
    .out(mux4_out)
);

nor_2to1_mux mux2(
    .data0(data4),
    .data1(data5),
    .sel(sel2),
    .out(mux2_out)
);

subtraction sub(
    .a(mux4_out),
    .b(mux2_out),
    .out(out)
);

endmodule