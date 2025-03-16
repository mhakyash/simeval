module mux16 #(parameter WIDTH=16) (
		input wire	[WIDTH - 1 : 0]		in0,		/* multiplexer input 0 */
		input wire	[WIDTH - 1 : 0]		in1,		/* multiplexer input 1 */
		input wire	[WIDTH - 1 : 0]		in2,		/* multiplexer input 2 */
		input wire	[WIDTH - 1 : 0]		in3,		/* multiplexer input 3 */
		input wire	[WIDTH - 1 : 0]		in4,		/* multiplexer input 4 */
		input wire	[WIDTH - 1 : 0]		in5,		/* multiplexer input 5 */
		input wire	[WIDTH - 1 : 0]		in6,		/* multiplexer input 6 */
		input wire	[WIDTH - 1 : 0]		in7,		/* multiplexer input 7 */
		input wire	[ 3: 0]				sel,		/* select lines */
		output reg	[WIDTH - 1 : 0]		mux_out		/* multiplexer output */
	);

	always @(*) begin
		case(sel)
			4'b0000:		mux_out = in0;
			4'b0001:		mux_out = in1;
			4'b0010:		mux_out = in2;
			4'b0011:		mux_out = in3;
			4'b0100:		mux_out = in4;
			4'b0101:		mux_out = in5;
			4'b0110:		mux_out = in6;
			4'b0111:		mux_out = in7;
			default:		mux_out = 16'h0000;	/* default value */
		endcase
	end
endmodule