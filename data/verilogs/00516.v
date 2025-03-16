module addsub_4bit (
    input [3:0] in_0,
    input [3:0] in_1,
    input ctrl,
    output reg [3:0] out,
    output ov
);

    reg [4:0] temp_out;
    reg temp_ov;

    always @(*) begin
        if (ctrl == 0) begin
            temp_out = in_0 + in_1;
            temp_ov = (temp_out > 15) ? 1 : 0;
        end
        else begin
            temp_out = in_0 - in_1;
            temp_ov = (temp_out < 0) ? 1 : 0;
        end
    end

    assign out = temp_out[3:0];
    assign ov = temp_ov;

endmodule