module handshake( 
    input clka,		// clock domain A
    output sync_a,	// valid data for A, new data for B

    input clkb,		// clock domain B
    output sync_b		// valid data for B, new data for A
    );

reg  a = 0;
reg  b = 0;
wire a_b;
wire b_a;

assign sync_a = ~(a ^ b_a);
assign sync_b =  (b ^ a_b);

synchronizer synchronizer_a( 
	.clk_in(clka), 
	.clk_out(clkb), 
	.in(a), 
	.out(a_b) );

synchronizer synchronizer_b( 
	.clk_in(clkb), 
	.clk_out(clka), 
	.in(b), 
	.out(b_a) );

always @(posedge clka ) 
	a <= ~b_a;

always @(posedge clkb )
	b <= a_b;

endmodule