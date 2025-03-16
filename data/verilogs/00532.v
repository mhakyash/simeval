module data_converter(
    input [15:0] data_in,
    output reg [3:0] data_out
);

always @(*) begin
    if (data_in[3:0] != 4'b0000) begin
        data_out <= 4'b1111; // least significant bits are high
    end else begin
        data_out <= data_in[15:12];
    end
end

endmodule