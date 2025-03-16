module bw_io_cmos_edgelogic(
   // Outputs
   to_core, por, pad_up, bsr_up, pad_dn_l, bsr_dn_l,

   // Inputs
   data, oe, bsr_mode, por_l,
   bsr_data_to_core, se, rcvr_data
   );

//////////////////////////////////////////////////////////////////////////
// INPUTS
//////////////////////////////////////////////////////////////////////////
input		data;
input		oe;
input		bsr_mode;
input		por_l;
input		se;
input		bsr_data_to_core;
input		rcvr_data;
supply0		vss;
//////////////////////////////////////////////////////////////////////////
// OUTPUTS
//////////////////////////////////////////////////////////////////////////
output		pad_up;
output		pad_dn_l;
output		bsr_up;
output		bsr_dn_l;
output		por;
output		to_core;


// WIRES
wire pad_up;
wire pad_dn_l;
wire bsr_up;
wire bsr_dn_l;
wire por;
wire to_core;
		
assign bsr_up   = pad_up;
assign bsr_dn_l = pad_dn_l;
assign por      = ~por_l;
assign pad_up   =  data && oe;
assign pad_dn_l = ~(~data && oe);
assign to_core  = (bsr_mode && !se) ? bsr_data_to_core : rcvr_data;

endmodule