module  niosII_system_altpll_0
	( 
	address,
	areset,
	c0,
	c1,
	clk,
	locked,
	phasedone,
	read,
	readdata,
	reset,
	write,
	writedata);
	input   [1:0]  address;
	input   areset;
	output   c0;
	output   c1;
	input   clk;
	output   locked;
	output   phasedone;
	input   read;
	output   [31:0]  readdata;
	input   reset;
	input   write;
	input   [31:0]  writedata;

	wire  wire_stdsync2_dout;
	wire  [4:0]   wire_sd1_clk;
	wire  wire_sd1_locked;
	(* ALTERA_ATTRIBUTE = {"POWER_UP_LEVEL=HIGH"} *)
	reg	pfdena_reg;
	wire	wire_pfdena_reg_ena;
	reg	prev_reset;
	wire  w_locked;
	wire  w_pfdena;
	wire  w_phasedone;
	wire  w_pll_areset_in;
	wire  w_reset;
	wire  w_select_control;
	wire  w_select_status;

	niosII_system_altpll_0_stdsync_sv6   stdsync2
	( 
	.clk(clk),
	.din(wire_sd1_locked),
	.dout(wire_stdsync2_dout),
	.reset_n((~ reset)));
	niosII_system_altpll_0_altpll_lqa2   sd1
	( 
	.areset((w_pll_areset_in | areset)),
	.clk(wire_sd1_clk),
	.inclk({{1{1'b0}}, clk}),
	.locked(wire_sd1_locked));
	
	// Set w_select_control and w_select_status based on address
	assign w_select_control = (~address[1]) & address[0];
	assign w_select_status = (~address[1]) & (~address[0]);
	
	// Set pfdena_reg based on writedata and w_select_control
	always @(posedge clk or posedge reset) begin
		if (reset == 1'b1) pfdena_reg <= {1{1'b1}};
		else if (wire_pfdena_reg_ena == 1'b1) pfdena_reg <= writedata[1];
	end
	assign wire_pfdena_reg_ena = write & w_select_control;
	
	// Set prev_reset based on reset and w_reset
	always @(posedge clk or posedge reset) begin
		if (reset == 1'b1) prev_reset <= 1'b0;
		else prev_reset <= w_reset;
	end
	assign w_reset = write & w_select_control & writedata[0];
	
	// Set outputs
	assign c0 = wire_sd1_clk[0];
	assign c1 = wire_sd1_clk[1];
	assign locked = wire_sd1_locked;
	assign phasedone = 1'b0;
	assign w_locked = wire_stdsync2_dout;
	assign w_pfdena = pfdena_reg;
	assign w_phasedone = 1'b1;
	assign w_pll_areset_in = prev_reset;
	
	// Set readdata based on read, w_select_control, w_pfdena, w_select_status, w_phasedone, w_locked
	assign readdata = {{30{1'b0}}, 
		(read & ((w_select_control & w_pfdena) | (w_select_status & w_phasedone))) ? 1'b1 : 1'b0, 
		(read & ((w_select_control & w_pll_areset_in) | (w_select_status & w_locked))) ? w_locked : 1'b0};
endmodule