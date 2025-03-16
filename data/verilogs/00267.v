module random_gen (
   input clk,      // clock signal
   input nreset,   // asynchronous reset
   input WAIT,     // enable signal
   output reg ready_random // random signal
   );

   generate
      if(WAIT)
      begin	   
         reg [8:0] ready_counter;  
         always @ (posedge clk or negedge nreset)
         if(!nreset)
            ready_counter[8:0] <= 'b0;   
         else
            ready_counter[8:0] <= ready_counter+1'b1;         
         assign ready_random = ready_counter[5] ^ ready_counter[4];
      end
      else
      begin
         assign ready_random = 1'b0;
      end // else: !if(WAIT)
   endgenerate
  
endmodule