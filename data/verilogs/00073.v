module pwm_to_speaker(
    input clk_i,
    input [15:0] din,
    output reg dout
);

    reg [16:0] pwm_accumulator;

    always @(posedge clk_i) begin
        pwm_accumulator[16:0] = pwm_accumulator[15:0] + {~din[15], din[14:0]};
        dout = pwm_accumulator[16];
    end

endmodule