module ShiftLeft4 (/*AUTOARG*/
   // Outputs
   out,
   valid,
   // Inputs
   clk, reset, in
   );

   input clk;
   input reset;
   input [15:0] in;
   output [15:0] out;
   output valid;

   reg [3:0] count;
   reg [15:0] shifted_in;
   reg [15:0] shifted_out;
   reg valid_reg;

   always @(posedge clk) begin
      if (reset) begin
         count <= 4'b0;
         shifted_in <= 16'h0;
         shifted_out <= 16'h0;
         valid_reg <= 1'b0;
      end
      else begin
         if (count < 4'b1010) begin
            count <= count + 1;
            shifted_in <= in;
            shifted_out <= 16'h0;
            valid_reg <= 1'b0;
         end
         else begin
            shifted_out <= {in[11:0], 4'b0};
            valid_reg <= 1'b1;
            if (count == 4'b1010) begin
               shifted_in <= in;
            end
            count <= count + 1;
         end
      end
   end

   assign out = shifted_out;
   assign valid = valid_reg;

endmodule