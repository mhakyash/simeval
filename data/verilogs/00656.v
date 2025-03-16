module binary_to_bcd(
    input [3:0] binary_input,
    output reg [3:0] bcd_high,
    output reg [3:0] bcd_low
);

always @* begin
    case(binary_input)
        4'b0000: begin
            bcd_high = 4'b0000;
            bcd_low = 4'b0000;
        end
        4'b0001: begin
            bcd_high = 4'b0000;
            bcd_low = 4'b0001;
        end
        4'b0010: begin
            bcd_high = 4'b0000;
            bcd_low = 4'b0010;
        end
        4'b0011: begin
            bcd_high = 4'b0000;
            bcd_low = 4'b0011;
        end
        4'b0100: begin
            bcd_high = 4'b0000;
            bcd_low = 4'b0100;
        end
        4'b0101: begin
            bcd_high = 4'b0000;
            bcd_low = 4'b0101;
        end
        4'b0110: begin
            bcd_high = 4'b0000;
            bcd_low = 4'b0110;
        end
        4'b0111: begin
            bcd_high = 4'b0000;
            bcd_low = 4'b0111;
        end
        4'b1000: begin
            bcd_high = 4'b0001;
            bcd_low = 4'b0000;
        end
        4'b1001: begin
            bcd_high = 4'b0001;
            bcd_low = 4'b0001;
        end
        4'b1010: begin
            bcd_high = 4'b0001;
            bcd_low = 4'b0010;
        end
        4'b1011: begin
            bcd_high = 4'b0001;
            bcd_low = 4'b0011;
        end
        4'b1100: begin
            bcd_high = 4'b0001;
            bcd_low = 4'b0100;
        end
        4'b1101: begin
            bcd_high = 4'b0001;
            bcd_low = 4'b0101;
        end
        4'b1110: begin
            bcd_high = 4'b0001;
            bcd_low = 4'b0110;
        end
        4'b1111: begin
            bcd_high = 4'b0001;
            bcd_low = 4'b0111;
        end
    endcase
end

endmodule

module bcd_adder(
    input [3:0] bcd_input1_high,
    input [3:0] bcd_input1_low,
    input [3:0] bcd_input2_high,
    input [3:0] bcd_input2_low,
    output reg [3:0] bcd_output_high,
    output reg [3:0] bcd_output_low
);

reg [3:0] temp_high;
reg [3:0] temp_low;

always @* begin
    temp_low = bcd_input1_low + bcd_input2_low;
    if(temp_low > 9) begin
        temp_low = temp_low - 10;
        temp_high = bcd_input1_high + bcd_input2_high + 1;
    end
    else begin
        temp_high = bcd_input1_high + bcd_input2_high;
    end
    if(temp_high > 9) begin
        temp_high = temp_high - 10;
    end
end

assign bcd_output_high = temp_high;
assign bcd_output_low = temp_low;

endmodule

module top_module (
    input clk,
    input reset,
    input [3:0] bin0,
    input [3:0] bin1,
    input [3:0] bin2,
    input [3:0] bin3,
    input [1:0] select,
    input enable,
    output reg [3:0] bcd0_high,
    output reg [3:0] bcd0_low,
    output reg [3:0] bcd1_high,
    output reg [3:0] bcd1_low,
    output reg [3:0] bcd2_high,
    output reg [3:0] bcd2_low,
    output reg [3:0] bcd3_high,
    output reg [3:0] bcd3_low
);

reg [3:0] selected_bin;
reg [3:0] bcd0_high_temp;
reg [3:0] bcd0_low_temp;
reg [3:0] bcd1_high_temp;
reg [3:0] bcd1_low_temp;
reg [3:0] bcd2_high_temp;
reg [3:0] bcd2_low_temp;
reg [3:0] bcd3_high_temp;
reg [3:0] bcd3_low_temp;

binary_to_bcd bcd0(.binary_input(bin0), .bcd_high(bcd0_high_temp), .bcd_low(bcd0_low_temp));
binary_to_bcd bcd1(.binary_input(bin1), .bcd_high(bcd1_high_temp), .bcd_low(bcd1_low_temp));
binary_to_bcd bcd2(.binary_input(bin2), .bcd_high(bcd2_high_temp), .bcd_low(bcd2_low_temp));
binary_to_bcd bcd3(.binary_input(bin3), .bcd_high(bcd3_high_temp), .bcd_low(bcd3_low_temp));

always @(posedge clk) begin
    if(reset) begin
        bcd0_high <= 4'b0000;
        bcd0_low <= 4'b0000;
        bcd1_high <= 4'b0000;
        bcd1_low <= 4'b0000;
        bcd2_high <= 4'b0000;
        bcd2_low <= 4'b0000;
        bcd3_high <= 4'b0000;
        bcd3_low <= 4'b0000;
    end
    else begin
        if(enable) begin
            case(select)
                2'b00: selected_bin <= bin0;
                2'b01: selected_bin <= bin1;
                2'b10: selected_bin <= bin2;
                2'b11: selected_bin <= bin3;
            endcase
            bcd0_high <= bcd0_high_temp;
            bcd0_low <= bcd0_low_temp;
            bcd1_high <= bcd1_high_temp;
            bcd1_low <= bcd1_low_temp;
            bcd2_high <= bcd2_high_temp;
            bcd2_low <= bcd2_low_temp;
            bcd3_high <= bcd3_high_temp;
            bcd3_low <= bcd3_low_temp;
        end
    end
end

bcd_adder adder(
    .bcd_input1_high(bcd0_high),
    .bcd_input1_low(bcd0_low),
    .bcd_input2_high(bcd1_high),
    .bcd_input2_low(bcd1_low),
    .bcd_output_high(bcd2_high_temp),
    .bcd_output_low(bcd2_low_temp)
);

bcd_adder adder2(
    .bcd_input1_high(bcd2_high_temp),
    .bcd_input1_low(bcd2_low_temp),
    .bcd_input2_high(bcd3_high),
    .bcd_input2_low(bcd3_low),
    .bcd_output_high(bcd3_high_temp),
    .bcd_output_low(bcd3_low_temp)
);

endmodule