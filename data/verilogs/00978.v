module max_byte(
   input [7:0] a,
   input [7:0] b,
   output reg [7:0] max_val
);

always @(*) begin
   max_val = (a >= b) ? a : b;
end

endmodule