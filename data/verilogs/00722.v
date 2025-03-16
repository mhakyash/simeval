module mux4_1_enable(MO, A, B, SEL, EN);
   input [3:0] A, B;
   input [1:0] SEL;
   input EN;
   output reg [3:0] MO;

   always @ (EN or SEL or A or B) begin
      if (EN) begin
         case (SEL)
            2'b00: MO <= A;
            2'b01: MO <= B;
            2'b10: MO <= 4'b0000;
            2'b11: MO <= 4'b0000;
         endcase
      end else begin
         MO <= 4'b0000;
      end
   end
endmodule