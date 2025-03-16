module ddr3_s4_uniphy_p0_hr_to_fr(
	clk,
	d_h0,
	d_h1,
	d_l0,
	d_l1,
	q0,
	q1
);

input	clk;
input	d_h0;
input	d_h1;
input	d_l0;
input	d_l1;
output	q0;
output	q1;

reg	q_h0;
reg	q_h1;
reg	q_l0;
reg	q_l1;
reg	q_l0_neg;
reg	q_l1_neg;

	always @(posedge clk)
	begin
		q_h0 <= d_h0;
		q_l0 <= d_l0;
		q_h1 <= d_h1;
		q_l1 <= d_l1;
	end

	always @(negedge clk)
	begin
		q_l0_neg <= q_l0;
		q_l1_neg <= q_l1;
	end

	assign q0 = clk ? q_l0_neg : q_h0;
	assign q1 = clk ? q_l1_neg : q_h1;

endmodule