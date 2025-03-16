module mux2to1(A, B, S, Y);
input A, B, S;
output Y;

always @(*) begin
    Y = (!S & A) | (S & B);
end

endmodule