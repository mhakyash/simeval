module sparc_ifu_sscan( ctu_sscan_snap, ctu_sscan_se, ctu_tck, lsu_sscan_test_data, 
tlu_sscan_test_data, swl_sscan_thrstate, ifq_sscan_test_data, sparc_sscan_so, rclk, si, so, se);

input ctu_sscan_snap;
input ctu_sscan_se;
input ctu_tck;
input si;
input se;
input [10:0] swl_sscan_thrstate;
input [3:0] ifq_sscan_test_data;
input [15:0] lsu_sscan_test_data;
input [62:0] tlu_sscan_test_data;
input rclk;

output sparc_sscan_so;
output so;

wire snap_f;
wire [93:0] snap_data, snap_data_f, snap_data_ff;

dff_s #(1) snap_inst0(.q(snap_f), .din(ctu_sscan_snap), .clk(rclk), .se(se), .si(), .so());

assign snap_data = {ifq_sscan_test_data, tlu_sscan_test_data, lsu_sscan_test_data, swl_sscan_thrstate};

dffe_s #(94) snap_inst1(.q(snap_data_f), .din(snap_data), .clk(rclk), .en(snap_f), .se(se), .si(), .so());

dff_s #(94) snap_inst2(.q(snap_data_ff), .din(snap_data_f), .clk(ctu_tck), .se(ctu_sscan_se), 
		     .si(), .so());

assign sparc_sscan_so = snap_data_ff[93];
assign so = snap_data_ff[0];

endmodule