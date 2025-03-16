module dna_sequencer #(
  parameter [95:0] SIM_DNA_VALUE = 96'h000000000000000000000000
)(
  output DOUT,

  input CLK,
  input DIN,
  input READ,
  input SHIFT
);
   
   localparam MAX_DNA_BITS = 96;
   localparam MSB_DNA_BITS = MAX_DNA_BITS - 1;
   
   reg [MSB_DNA_BITS:0] dna_val = SIM_DNA_VALUE;
   reg dout_out;

   always @(posedge CLK) begin
      if(READ == 1'b1) begin
         dna_val = SIM_DNA_VALUE;
	 dout_out = SIM_DNA_VALUE[0];
      end // READ == 1'b1
      else if(READ == 1'b0)
        if(SHIFT == 1'b1) begin
	   dna_val = {DIN, dna_val[MSB_DNA_BITS : 1]};
	   dout_out = dna_val[0];
        end  // SHIFT == 1'b1
   end // always @ (posedge CLK)

   assign DOUT = dout_out;
      
endmodule