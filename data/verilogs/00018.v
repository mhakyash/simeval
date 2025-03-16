module top_module(
    input [2:0] sel,
    input [3:0] data0,
    input [3:0] data1,
    input [3:0] data2,
    input [3:0] data3,
    input [3:0] data4,
    input [3:0] data5,
    input [3:0] data6,
    input [3:0] data7,
    output [3:0] out
);

wire [3:0] mux1_out;
wire [3:0] mux2_out;

// 4-to-1 MUX
assign mux1_out[0] = (sel[1] == 0 && sel[0] == 0) ? data0[0] :
                     (sel[1] == 0 && sel[0] == 1) ? data1[0] :
                     (sel[1] == 1 && sel[0] == 0) ? data2[0] :
                                                  data3[0];
assign mux1_out[1] = (sel[1] == 0 && sel[0] == 0) ? data0[1] :
                     (sel[1] == 0 && sel[0] == 1) ? data1[1] :
                     (sel[1] == 1 && sel[0] == 0) ? data2[1] :
                                                  data3[1];
assign mux1_out[2] = (sel[1] == 0 && sel[0] == 0) ? data0[2] :
                     (sel[1] == 0 && sel[0] == 1) ? data1[2] :
                     (sel[1] == 1 && sel[0] == 0) ? data2[2] :
                                                  data3[2];
assign mux1_out[3] = (sel[1] == 0 && sel[0] == 0) ? data0[3] :
                     (sel[1] == 0 && sel[0] == 1) ? data1[3] :
                     (sel[1] == 1 && sel[0] == 0) ? data2[3] :
                                                  data3[3];

// 2-to-1 MUX
assign mux2_out[0] = (sel[2] == 0) ? mux1_out[0] : mux1_out[4];
assign mux2_out[1] = (sel[2] == 0) ? mux1_out[1] : mux1_out[5];
assign mux2_out[2] = (sel[2] == 0) ? mux1_out[2] : mux1_out[6];
assign mux2_out[3] = (sel[2] == 0) ? mux1_out[3] : mux1_out[7];

assign out = mux2_out;

endmodule