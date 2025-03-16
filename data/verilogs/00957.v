module gray_to_binary (
    input [3:0] gray,
    output reg [3:0] binary
);

always @ (gray) begin
    binary[3] = gray[3];
    binary[2] = binary[3] ^ gray[2];
    binary[1] = binary[2] ^ gray[1];
    binary[0] = binary[1] ^ gray[0];
end

endmodule