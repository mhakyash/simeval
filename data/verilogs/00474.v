module mux_2to1(
    input [1:0] in,
    input sel,
    output out
    );
    assign out = (sel == 1'b0) ? in[0] : in[1];
endmodule

module mux_4to1(
    input [3:0] in,
    input [1:0] sel,
    output out
    );
    wire [1:0] sel_2to1;
    assign sel_2to1[1] = sel[1];
    assign sel_2to1[0] = sel[0];
    wire [1:0] mux_2to1_out[3:0];
    mux_2to1 mux_2to1_inst0(.in(in[1:0]), .sel(sel_2to1), .out(mux_2to1_out[0]));
    mux_2to1 mux_2to1_inst1(.in(in[3:2]), .sel(sel_2to1), .out(mux_2to1_out[1]));
    assign out = (sel[1] == 1'b0) ? mux_2to1_out[0] : mux_2to1_out[1];
endmodule

module mux_8to1(
    input [7:0] in,
    input [2:0] sel,
    output out
    );
    wire [1:0] sel_4to1;
    assign sel_4to1[1] = sel[2];
    assign sel_4to1[0] = sel[1:0];
    wire [1:0] mux_4to1_out[7:0];
    mux_4to1 mux_4to1_inst0(.in(in[3:0]), .sel(sel_4to1), .out(mux_4to1_out[0]));
    mux_4to1 mux_4to1_inst1(.in(in[7:4]), .sel(sel_4to1), .out(mux_4to1_out[1]));
    assign out = (sel[2] == 1'b0) ? mux_4to1_out[0] : mux_4to1_out[1];
endmodule

module mux_16to1(
    input [15:0] in,
    input [3:0] sel,
    output out
    );
    wire [1:0] sel_8to1;
    assign sel_8to1[1] = sel[3];
    assign sel_8to1[0] = sel[2:0];
    wire [1:0] mux_8to1_out[15:0];
    mux_8to1 mux_8to1_inst0(.in(in[7:0]), .sel(sel_8to1), .out(mux_8to1_out[0]));
    mux_8to1 mux_8to1_inst1(.in(in[15:8]), .sel(sel_8to1), .out(mux_8to1_out[1]));
    assign out = (sel[3] == 1'b0) ? mux_8to1_out[0] : mux_8to1_out[1];
endmodule

module mux_32to1(
    input [31:0] in,
    input [4:0] sel,
    output out
    );
    wire [1:0] sel_16to1;
    assign sel_16to1[1] = sel[4];
    assign sel_16to1[0] = sel[3:0];
    wire [1:0] mux_16to1_out[31:0];
    mux_16to1 mux_16to1_inst0(.in(in[15:0]), .sel(sel_16to1), .out(mux_16to1_out[0]));
    mux_16to1 mux_16to1_inst1(.in(in[31:16]), .sel(sel_16to1), .out(mux_16to1_out[1]));
    assign out = (sel[4] == 1'b0) ? mux_16to1_out[0] : mux_16to1_out[1];
endmodule

module mux_64to1(
    input [63:0] in,
    input [5:0] sel,
    output out
    );
    wire [1:0] sel_32to1;
    assign sel_32to1[1] = sel[5];
    assign sel_32to1[0] = sel[4:0];
    wire [1:0] mux_32to1_out[63:0];
    mux_32to1 mux_32to1_inst0(.in(in[31:0]), .sel(sel_32to1), .out(mux_32to1_out[0]));
    mux_32to1 mux_32to1_inst1(.in(in[63:32]), .sel(sel_32to1), .out(mux_32to1_out[1]));
    assign out = (sel[5] == 1'b0) ? mux_32to1_out[0] : mux_32to1_out[1];
endmodule