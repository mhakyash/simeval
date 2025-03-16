module LUT_4(in_3,in_2,in_1,in_0,out);

   //Truth table parameter represents the default function of the LUT.
   //The most significant bit is the output when all inputs are logic one.
   parameter Truth_table=16'b0000000000000000; 
   
   input in_0,in_1,in_2,in_3;
   output reg out;
   integer     selected_row;
   wire [3:0]  a;

   interconnect inter0(in_0 , a[0]);
   interconnect inter1(in_1 , a[1]);
   interconnect inter2(in_2 , a[2]);
   interconnect inter3(in_3 , a[3]);

   always@(a[0], a[1], a[2], a[3])
     begin
	selected_row = {a[3], a[2], a[1], a[0]};
	out = Truth_table[selected_row];
     end
     
endmodule