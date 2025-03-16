module wr_mux
  (
   input 	     clock,
   input 	     reset,
   input [3:0] 	     wri_valid,
   output reg [3:0]  wri_ready,
   input [3:0] 	     wri_last,
   input [63:0]      wri_addr_0,
   input [63:0]      wri_addr_1,
   input [63:0]      wri_addr_2,
   input [63:0]      wri_addr_3,
   input [63:0]      wri_data_0,
   input [63:0]      wri_data_1,
   input [63:0]      wri_data_2,
   input [63:0]      wri_data_3,
   output reg 	     wro_valid,
   input 	     wro_ready,
   output reg [63:0] wro_addr,
   output reg [63:0] wro_data,
   output reg 	     wro_last
   );

   reg [3:0] 	     state = 0;
   reg [60:0] 	     wro_addr_s = 0;
   reg [3:0] 	     wri_ready_s = 0;
   reg [3:0] 	     wri_valid_s = 0;
   reg [3:0] 	     wri_last_s = 0;
   reg [63:0] 	     wri_addr_s = 0;
   reg [63:0] 	     wri_data_s = 0;

   assign wro_addr = {wro_addr_s, 3'd0};
   assign wri_ready[0] = (state == 1) && wro_ready;
   assign wri_ready[1] = (state == 5) && wro_ready;
   assign wri_ready[2] = (state == 9) && wro_ready;
   assign wri_ready[3] = (state == 13) && wro_ready;
   assign wro_valid = (state[1:0] == 1);
   always @ (posedge clock)
     begin
	if(reset)
	  begin
	     state <= 4'h0;
	     wri_ready_s <= 0;
	     wri_valid_s <= 0;
	     wri_last_s <= 0;
	     wri_addr_s <= 0;
	     wri_data_s <= 0;
	     wro_valid <= 0;
	     wro_data <= 0;
	     wro_last <= 0;
	  end
	else
	  begin
	     case(state)
	       default: state <= wri_valid[0] ? 4'h1 :
				 wri_valid[1] ? 4'h5 :
				 wri_valid[2] ? 4'h9 :
				 wri_valid[3] ? 4'hD : 4'h0;
	       4'bxx01: state <= state + wro_ready;
	       4'h2: state <= ~wri_last_s[0] ? state :
			      wri_valid[1] ? 4'h5 :
			      wri_valid[2] ? 4'h9 :
			      wri_valid[3] ? 4'hD :
			      wri_valid[0] ? 4'h1 : 4'h0;
	       4'h6: state <= ~wri_last_s[1] ? state :
			      wri_valid[0] ? 4'h1 :
			      wri_valid[2] ? 4'h9 :
			      wri_valid[3] ? 4'hD :
			      wri_valid[1] ? 4'h5 : 4'h0;
	       4'hA: state <= ~wri_last_s[2] ? state :
			      wri_valid[3] ? 4'hD :
			      wri_valid[0] ? 4'h1 :
			      wri_valid[1] ? 4'h5 :
			      wri_valid[2] ? 4'h9 : 4'h0;
	       4'hE: state <= ~wri_last_s[3] ? state :
			      wri_valid[0] ? 4'h1 :
			      wri_valid[1] ? 4'h5 :
			      wri_valid[2] ? 4'h9 :
			      wri_valid[3] ? 4'hD : 4'h0;
	     endcase
	     case(state[3:2])
	       0: begin
		     wri_ready_s[0] <= wri_ready[0];
		     wri_valid_s[0] <= wri_valid[0];
		     wri_last_s[0] <= wri_last[0];
		     wri_addr_s <= wri_addr_0;
		     wri_data_s <= wri_data_0;
		   end
	       1: begin
		     wri_ready_s[1] <= wri_ready[1];
		     wri_valid_s[1] <= wri_valid[1];
		     wri_last_s[1] <= wri_last[1];
		     wri_addr_s <= wri_addr_1;
		     wri_data_s <= wri_data_1;
		   end
	       2: begin
		     wri_ready_s[2] <= wri_ready[2];
		     wri_valid_s[2] <= wri_valid[2];
		     wri_last_s[2] <= wri_last[2];
		     wri_addr_s <= wri_addr_2;
		     wri_data_s <= wri_data_2;
		   end
	       3: begin
		     wri_ready_s[3] <= wri_ready[3];
		     wri_valid_s[3] <= wri_valid[3];
		     wri_last_s[3] <= wri_last[3];
		     wri_addr_s <= wri_addr_3;
		     wri_data_s <= wri_data_3;
		   end
	     endcase
	     if(state[1:0] == 1 && wro_ready && wri_ready_s[state[3:2]])
	       begin
		  wro_valid <= 1;
		  wro_data <= wri_data_s;
		  wro_last <= wri_last_s[state[3:2]];
		  wri_ready_s <= 0;
		  wri_valid_s <= 0;
		  wri_last_s <= 0;
		  state <= state + 1;
		  wro_addr_s <= wri_addr_s[63:3];
	       end
	     else if(state[1:0] == 1 && wro_ready)
	       begin
		  wri_ready_s[state[3:2]] <= 1;
		  wri_valid_s[state[3:2]] <= wri_valid[state[3:2]];
		  wri_last_s[state[3:2]] <= wri_last[state[3:2]];
	       end
	  end
     end
endmodule