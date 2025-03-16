module shift_register (
    input data,
    output reg [3:0] out
);

    always @(*) begin
        out[0] = data;
        out[1] = out[0];
        out[2] = out[1];
        out[3] = out[2];
    end

endmodule