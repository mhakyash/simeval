module xor_8bit (
   input [7:0] A,
   input [7:0] B,
   input RST,
   output reg [7:0] Y
);

   always @(*) begin
      if (RST == 1) begin
         Y <= 8'b0;
      end else begin
         Y <= A ^ B;
      end
   end

endmodule