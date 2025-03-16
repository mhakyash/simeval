module top_module (
    input clk,
    input [7:0] in,
    output [3:0] q
);

    // Priority Encoder
    wire [7:0] in_inv;
    assign in_inv = ~in;
    wire [2:0] priority;
    assign priority = in_inv[7:5] ? 3 : in_inv[4:3] ? 2 : in_inv[2] ? 1 : in_inv[1] ? 0 : 3'b111;
    
    // 4-bit Binary Counter
    reg [3:0] count = 4'b0000;
    always @(posedge clk) begin
        if (count == 4'b1111) begin
            count <= 4'b0000;
        end else begin
            count <= count + 1;
        end
    end
    
    // Functional Module
    wire [3:0] mult_out;
    assign mult_out = priority * count;
    
    // Output
    assign q = mult_out;

endmodule