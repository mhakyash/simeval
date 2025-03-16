module fan_controller(
    input reset,
    output fan
);

reg rsi_MRST_reset;
reg csi_MCLK_clk;
reg [31:0] avs_ctrl_writedata;
wire [31:0] avs_ctrl_readdata;
reg [3:0] avs_ctrl_byteenable;
reg [2:0] avs_ctrl_address;
reg avs_ctrl_write;
reg avs_ctrl_read;
wire avs_ctrl_waitrequest;
reg rsi_PWMRST_reset;
reg csi_PWMCLK_clk;

fan_motor_driver fan_driver(
    .rsi_MRST_reset(rsi_MRST_reset),
    .csi_MCLK_clk(csi_MCLK_clk),
    .avs_ctrl_writedata(avs_ctrl_writedata),
    .avs_ctrl_readdata(avs_ctrl_readdata),
    .avs_ctrl_byteenable(avs_ctrl_byteenable),
    .avs_ctrl_address(avs_ctrl_address),
    .avs_ctrl_write(avs_ctrl_write),
    .avs_ctrl_read(avs_ctrl_read),
    .avs_ctrl_waitrequest(avs_ctrl_waitrequest),
    .rsi_PWMRST_reset(rsi_PWMRST_reset),
    .csi_PWMCLK_clk(csi_PWMCLK_clk),
    .fan(fan)
);

reg [31:0] pwm_frequent;
reg [31:0] pwm_width;

assign rsi_MRST_reset = reset;
assign rsi_PWMRST_reset = reset;
assign csi_MCLK_clk = 1'b1;
assign csi_PWMCLK_clk = 1'b1;

initial begin
    avs_ctrl_byteenable = 4'b1111;
    avs_ctrl_address = 3'b000;
    avs_ctrl_write = 1'b0;
    avs_ctrl_read = 1'b1;
    #1 avs_ctrl_writedata = 32'h0;
    #1 avs_ctrl_writedata = 32'hEA680001;
    #1 avs_ctrl_writedata = 32'hEA680002;
    #1 avs_ctrl_writedata = 32'hEA680003;
    #1 avs_ctrl_writedata = 32'hEA680000;
end

always @ (posedge csi_MCLK_clk or posedge reset) begin
    if (reset) begin
        pwm_frequent <= 0;
        pwm_width <= 0;
    end else begin
        if (avs_ctrl_write && avs_ctrl_address == 1) begin
            pwm_frequent <= avs_ctrl_writedata;
        end else if (avs_ctrl_write && avs_ctrl_address == 2) begin
            pwm_width <= avs_ctrl_writedata;
        end
    end
end

reg [31:0] pwm_counter;
wire pwm_out;

assign pwm_out = pwm_counter < pwm_width;

always @ (posedge csi_PWMCLK_clk or posedge reset) begin
    if (reset) begin
        pwm_counter <= 0;
    end else begin
        pwm_counter <= pwm_counter + pwm_frequent;
    end
end

assign fan = pwm_out;

endmodule