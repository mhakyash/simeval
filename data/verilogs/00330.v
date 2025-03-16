module up_down_counter (
    input clk,
    input rst,
    input up_down,
    output reg [3:0] count
);

always @(posedge clk) begin
    if (rst) begin
        count <= 4'b0000;
    end else begin
        if (up_down) begin
            count <= count + 1;
        end else begin
            count <= count - 1;
        end
    end
end

endmodule

module seven_segment_display (
    input [3:0] D,
    output A,
    output B,
    output C,
    output D,
    output E,
    output F,
    output G,
    output reg [6:0] seg_display
);

always @(*) begin
    case (D)
        4'b0000: seg_display = 7'b1111110; // 0
        4'b0001: seg_display = 7'b0110000; // 1
        4'b0010: seg_display = 7'b1101101; // 2
        4'b0011: seg_display = 7'b1111001; // 3
        4'b0100: seg_display = 7'b0110011; // 4
        4'b0101: seg_display = 7'b1011011; // 5
        4'b0110: seg_display = 7'b1011111; // 6
        4'b0111: seg_display = 7'b1110000; // 7
        4'b1000: seg_display = 7'b1111111; // 8
        4'b1001: seg_display = 7'b1111011; // 9
        default: seg_display = 7'b0000001; // Error
    endcase
end

assign {A, B, C, D, E, F, G} = seg_display;

endmodule

module bitwise_or (
    input [3:0] count,
    input [6:0] seg_display,
    output reg [6:0] final_output
);

always @(*) begin
    final_output = count | seg_display;
end

endmodule

module top_module (
    input clk,
    input rst,
    input up_down,
    input [3:0] D,
    output A,
    output B,
    output C,
    output D,
    output E,
    output F,
    output G,
    output reg [3:0] count,
    output reg [6:0] seg_display,
    output reg [6:0] final_output
);

up_down_counter counter (.clk(clk), .rst(rst), .up_down(up_down), .count(count));
seven_segment_display display (.D(count), .A(A), .B(B), .C(C), .D(D), .E(E), .F(F), .G(G), .seg_display(seg_display));
bitwise_or or_gate (.count(count), .seg_display(seg_display), .final_output(final_output));

endmodule