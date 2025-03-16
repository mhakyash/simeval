module mux_4to1_sel2_8_1 #(
    parameter ID = 0,
    parameter NUM_STAGE = 1,
    parameter din1_WIDTH = 8,
    parameter din2_WIDTH = 8,
    parameter din3_WIDTH = 8,
    parameter din4_WIDTH = 8,
    parameter din5_WIDTH = 2,
    parameter dout_WIDTH = 8
)(
    input [din1_WIDTH-1:0] din1,
    input [din2_WIDTH-1:0] din2,
    input [din3_WIDTH-1:0] din3,
    input [din4_WIDTH-1:0] din4,
    input [din5_WIDTH-1:0] din5,
    output [dout_WIDTH-1:0] dout
);

wire [1:0] sel;
wire [7:0] mux_1_0;
wire [7:0] mux_1_1;
wire [7:0] mux_2_0;

assign sel = din5;
assign mux_1_0 = (sel[0] == 0) ? din1 : din2;
assign mux_1_1 = (sel[0] == 0) ? din3 : din4;
assign mux_2_0 = (sel[1] == 0) ? mux_1_0 : mux_1_1;
assign dout = mux_2_0;

endmodule