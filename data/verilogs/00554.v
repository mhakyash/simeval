module decade_counter (
    input clk,
    input slowena,
    input reset,
    output [3:0] binary_out);

    wire [3:0] bcd_out;
    reg [3:0] binary_reg;

    binary_to_bcd bcd_converter(
        .binary_in(binary_reg),
        .bcd_out(bcd_out)
    );

    always @(posedge clk or negedge reset) begin
        if (reset == 0) begin
            binary_reg <= 4'b0000;
        end else if (slowena == 1) begin
            binary_reg <= binary_reg + 1;
        end
    end

    assign binary_out = binary_reg;

endmodule

module binary_to_bcd (
    input [3:0] binary_in,
    output [3:0] bcd_out);

    always @(*) begin
        case (binary_in)
            4'b0000: bcd_out = 4'b0000;
            4'b0001: bcd_out = 4'b0001;
            4'b0010: bcd_out = 4'b0010;
            4'b0011: bcd_out = 4'b0011;
            4'b0100: bcd_out = 4'b0100;
            4'b0101: bcd_out = 4'b0101;
            4'b0110: bcd_out = 4'b0110;
            4'b0111: bcd_out = 4'b0111;
            4'b1000: bcd_out = 4'b1000;
            4'b1001: bcd_out = 4'b1001;
            default: bcd_out = 4'b0000;
        endcase
    end

endmodule

module top_module (
    input clk,
    input slowena,
    input reset,
    output [3:0] q);

    wire [3:0] binary_out;

    decade_counter counter(
        .clk(clk),
        .slowena(slowena),
        .reset(reset),
        .binary_out(binary_out)
    );

    assign q = binary_out;

endmodule