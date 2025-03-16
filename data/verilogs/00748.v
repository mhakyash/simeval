module LED7SEG(DIGIT, DISPLAY, BCD3, BCD2, BCD1, BCD0, enable, clk);

	input clk;
	input [3:0] BCD1, BCD0, BCD3, BCD2;
	input enable;

	output[3:0] DIGIT;
	output[7:0] DISPLAY;

	reg[1:0] num;
	wire[1:0] next_num;
	wire[3:0] value;

	always@(posedge clk)
		if (enable)
			num <= next_num;
		else
			num <= 2'd0;

	assign next_num = num + 2'd1;

	assign value = (num==2'd0) ? BCD0 :
						(num==2'd1) ? BCD1 :
						(num==2'd2) ? BCD2 : BCD3 ;

	assign DIGIT = (num==2'd0) ? 4'b1110 :
						(num==2'd1) ? 4'b1101 :
						(num==2'd2) ? 4'b1011 : 4'b0111 ;

	assign DISPLAY = (value==4'h0) ? 8'b0000_0011 :
							(value==4'h1) ? 8'b1001_1111 :
							(value==4'h2) ? 8'b0010_0100 :
							(value==4'h3) ? 8'b0000_1100 :
							(value==4'h4) ? 8'b1001_1000 :
							(value==4'h5) ? 8'b0100_1000 :
							(value==4'h6) ? 8'b0100_0000 :
							(value==4'h7) ? 8'b0001_1111 :
							(value==4'h8) ? 8'b0000_0000 :
							(value==4'h9) ? 8'b0000_1000 : 
							(value==4'hA) ? 8'b0001_0000 : 
							(value==4'hB) ? 8'b1100_0000 : 
							(value==4'hC) ? 8'b0110_0011 : 
							(value==4'hD) ? 8'b1000_0100 : 
							(value==4'hE) ? 8'b0110_0000 : 
							(value==4'hF) ? 8'b0111_0000 : 8'hFF ;
endmodule