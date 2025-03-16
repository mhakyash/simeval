module mux4to1 (MO, IN0, IN1, IN2, IN3, S);
   input IN0;
   input IN1;
   input IN2;
   input IN3;
   input [1:0] S;
   output MO;

   wire   tmp_MO;
   
   assign tmp_MO = (S == 2'b00) ? IN0 :
                   (S == 2'b01) ? IN1 :
                   (S == 2'b10) ? IN2 :
                   (S == 2'b11) ? IN3 : 1'b0;

   assign MO = tmp_MO;

endmodule