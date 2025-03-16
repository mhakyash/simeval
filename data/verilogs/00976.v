module gray_code (
    input [3:0] a,
    output reg [3:0] gray
);

always @(*) begin
    gray[3] = a[3];
    gray[2] = a[3] ^ a[2];
    gray[1] = a[2] ^ a[1];
    gray[0] = a[1] ^ a[0];
end

endmodule