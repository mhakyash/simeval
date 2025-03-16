module full_adder(a, b, sum, carry);
   input a, b;
   output sum, carry;
   wire w1, w2, w3;
   assign w1 = a ^ b;
   assign w2 = a & b;
   assign w3 = w2 | (w1 & carry);
   assign sum = w1 ^ carry;
   assign carry = w3;
endmodule