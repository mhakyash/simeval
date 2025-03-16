module distance(
    input clk,
    input rst,
    input [63:0] citya,
    input [63:0] cityb,
    input inp_valid,
    output out_valid,
    output [31:0] out
    );

reg sqrt_inp_valid_q, sqrt_inp_valid_d;
reg [31:0] sqrt_inp_q, sqrt_inp_d;
wire [15:0] sqrt_out;
wire sqrt_out_valid;
cordic_sqrt sqrt (
  .aclk(clk),
  .s_axis_cartesian_tvalid(sqrt_inp_valid_q),
  .m_axis_dout_tvalid(sqrt_out_valid),
  .s_axis_cartesian_tdata(sqrt_inp_q[23:0]),
  .m_axis_dout_tdata(sqrt_out)
);

assign out = {19'b0,sqrt_out};
assign out_valid = sqrt_out_valid;

reg [31:0] dx_q, dx_d, dy_q, dy_d;
reg dx_valid_q, dx_valid_d;

always @(*) begin
	dx_d = dx_q;
	dy_d = dy_q;
	sqrt_inp_valid_d = 0;
	sqrt_inp_d = sqrt_inp_q;
	dx_valid_d = 0;
	
	if (dx_valid_q) begin
		sqrt_inp_d = dx_q*dx_q + dy_q*dy_q;
		sqrt_inp_valid_d = 1;
	end
	if (inp_valid) begin
		dx_d = cityb[31:0]-citya[31:0];
		dy_d = cityb[63:32]-citya[63:32];
		dx_valid_d = 1;
	end
end

always @(posedge clk) begin
	if (rst) begin
	end else begin
		dx_q <= dx_d;
		dy_q <= dy_d;
		sqrt_inp_q <= sqrt_inp_d;
		sqrt_inp_valid_q <= sqrt_inp_valid_d;
		dx_valid_q <= dx_valid_d;
	end
end

endmodule