module toggle2pulse(
   // Outputs
   out,
   // Inputs
   clk, in, reset
   );
   
   //clocks
   input  clk; 
   
   input  in;   
   output out;

   //reset
   input  reset;
   reg 	  out_reg;
   reg   	  out_reg_last;
         
   always @ (posedge clk) begin
     if(reset) begin
       out_reg <= 1'b0;
     end else begin
       out_reg_last <= out_reg;
       out_reg <= in;
     end
   end
      
   assign out = (in ^ out_reg_last) ? ~out_reg_last : out_reg_last;

endmodule