module count_signal (
   // Inputs
   input clk,
   input signal,
   input [31:0] period,
   // Outputs
   output reg [31:0] count
   );

   reg signal_prev = 0;
   reg [31:0] counter = 0;

   always @(posedge clk) begin
      if (period == 0) begin
         count <= 0;
         counter <= 0;
      end else if (counter == period-1) begin
         count <= counter;
         counter <= 0;
      end else begin
         counter <= counter + 1;
         if (signal == 1 && signal_prev == 0) begin
            counter <= 0;
         end
      end
      signal_prev <= signal;
   end

endmodule