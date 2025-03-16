module summator(
    input [12:0] A,
    input clk,
    input ce,
    input rst,
	 
	 output [20:0] Y
    );
reg [20:0] sum = 21'b0;
wire [20:0] new_sum;
reg [20:0 ] tmp = 21'b0;

always @(posedge clk)
begin
	if(rst) sum = 21'b0;
	else
	begin
		sum = new_sum;
		if(ce) tmp = {{A[12]}, {8{A[12]}}, {A[11:0]}};
		else tmp = 0;
	end
end
add adder (
  .a(sum), // input [20 : 0] a
  .b(tmp), // input [20 : 0] b
  //.clk(clk), // input clk
  .s(new_sum) // output [20 : 0] s
);
assign Y = sum;
endmodule