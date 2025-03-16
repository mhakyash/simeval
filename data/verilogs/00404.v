module top_module (
    input clk,
    input [3:0] in, // 4-bit input for the priority encoder
    output [3:0] Q, // 4-bit output from the Johnson counter
    output [7:0] out // 8-bit final output
);

    // Priority Encoder
    wire [1:0] priority;
    priority_encoder pe(
        .in(in),
        .out(priority)
    );

    // Johnson Counter
    reg [3:0] johnson;
    always @(posedge clk) begin
        case(johnson)
            4'b0001: johnson <= 4'b0011;
            4'b0011: johnson <= 4'b0111;
            4'b0111: johnson <= 4'b1110;
            4'b1110: johnson <= 4'b1100;
            4'b1100: johnson <= 4'b1000;
            4'b1000: johnson <= 4'b0001;
        endcase
    end
    assign Q = johnson;

    // Final Output
    assign out = {priority, johnson} + 8'b0;

endmodule

module priority_encoder (
    input [3:0] in,
    output [1:0] out
);
    assign out = ({in[3], in[2]} > {in[1], in[0]}) ? 2'b11 :
                 ({in[3], in[2]} == {in[1], in[0]}) ? 2'b10 :
                 2'b01;
endmodule