module binary_adder
   (
    input wire [3:0] A, B,
    input wire Cin,
    output wire [3:0] S,
    output wire Cout
   );

   // signal declaration
   reg [3:0] S_reg;
   wire [3:0] A_xor_B;
   wire [3:0] A_and_B;
   wire [3:0] A_xor_B_and_Cin;

   // simple full-adder implementation
   assign A_xor_B = A ^ B;
   assign A_and_B = A & B;
   assign A_xor_B_and_Cin = A_xor_B & Cin;
   always @*
   begin
      S_reg[0] = A_xor_B[0] ^ Cin;
      S_reg[1] = A_xor_B[1] ^ A_xor_B_and_Cin[0];
      S_reg[2] = A_xor_B[2] ^ A_xor_B_and_Cin[1];
      S_reg[3] = A_xor_B[3] ^ A_xor_B_and_Cin[2];
      Cout = A_and_B[0] | A_and_B[1] & Cin | A_and_B[2] & A_xor_B_and_Cin[0] | A_and_B[3] & A_xor_B_and_Cin[1];
   end

   // output
   assign S = S_reg;

endmodule