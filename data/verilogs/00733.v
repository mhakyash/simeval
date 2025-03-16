module receiver_buffer(
   input			rxi_rd,
   output			rxi_wait,
   input			reset,
   input			vertical_k,
   input [3:0]		ext_yid_k,
   input [3:0]		ext_xid_k,
   input [LW-1:0]	rxi_data,
   input			rxi_lclk,
   input			rxi_frame,
   output			c0_fifo_access_rlc,
   output			c0_fifo_full_rlc,
   output			c1_fifo_access_rlc,
   output			c1_fifo_full_rlc,
   output			c2_fifo_access_rlc,
   output			c2_fifo_full_rlc,
   output			c3_fifo_access_rlc,
   output			c3_fifo_full_rlc,
   output [14*LW-1:0]	rxi_assembled_tran_rlc
);

   // ################################
   // # Receiver buffer instantiation
   // ################################

   link_rxi_buffer link_rxi_buffer(
				   // Outputs
				   .rxi_wait		(rxi_wait),	 // Templated
				   .rxi_assembled_tran	(rxi_assembled_tran_rlc[14*LW-1:0]), // Templated
				   .rxi_c0_access	(c0_fifo_access_rlc), // Templated
				   .rxi_c1_access	(c1_fifo_access_rlc), // Templated
				   .rxi_c2_access	(c2_fifo_access_rlc), // Templated
				   .rxi_c3_access	(c3_fifo_access_rlc), // Templated
				   // Inputs
				   .reset		(reset),	 // Templated
				   .vertical_k		(vertical_k),	 // Templated
				   .ext_yid_k		(ext_yid_k[3:0]), // Templated
				   .ext_xid_k		(ext_xid_k[3:0]), // Templated
				   .rxi_data		(rxi_data[LW-1:0]), // Templated
				   .rxi_lclk		(rxi_lclk),	 // Templated
				   .rxi_frame		(rxi_frame),	 // Templated
				   .rxi_rd		(rxi_rd),	 // Provided
				   .cfg_extcomp_dis	(1'b0),		 // Default value
				   .c0_fifo_full	(c0_fifo_full_rlc), // Templated
				   .c1_fifo_full	(c1_fifo_full_rlc), // Templated
				   .c2_fifo_full	(c2_fifo_full_rlc), // Templated
				   .c3_fifo_full	(c3_fifo_full_rlc)); // Templated


endmodule