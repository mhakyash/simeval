module seven_segment_decoder (
    input [3:0] DATA_IN,
    output reg [6:0] SEVEN_SEG_OUT
);

reg [3:0] pipeline_reg1;
reg [3:0] pipeline_reg2;
reg [3:0] pipeline_reg3;

always @(posedge clk) begin
    pipeline_reg1 <= DATA_IN;
    pipeline_reg2 <= pipeline_reg1;
    pipeline_reg3 <= pipeline_reg2;
end

always @(posedge clk) begin
    case(pipeline_reg3)
        4'd0: SEVEN_SEG_OUT <= 7'b1000000; // 0
        4'd1: SEVEN_SEG_OUT <= 7'b1111001; // 1
        4'd2: SEVEN_SEG_OUT <= 7'b0100100; // 2
        4'd3: SEVEN_SEG_OUT <= 7'b0110000; // 3
        4'd4: SEVEN_SEG_OUT <= 7'b0011001; // 4
        4'd5: SEVEN_SEG_OUT <= 7'b0010010; // 5
        4'd6: SEVEN_SEG_OUT <= 7'b0000010; // 6
        4'd7: SEVEN_SEG_OUT <= 7'b1111000; // 7
        4'd8: SEVEN_SEG_OUT <= 7'b0000000; // 8
        4'd9: SEVEN_SEG_OUT <= 7'b0010000; // 9
        default: SEVEN_SEG_OUT <= 7'b1111111; // Error
    endcase
end

endmodule