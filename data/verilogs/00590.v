module top_module (
    input clk,
    input reset,      // Synchronous active-high reset
    output [3:0] q
);

reg [3:0] counter;
wire [2:0] count_set_bits_out;
wire [3:0] sum_out;
wire [3:0] barrel_shifter_out;

count_set_bits count_set_bits_inst(
    .in(counter),
    .out(count_set_bits_out)
);

barrel_shifter barrel_shifter_inst(
    .clk(clk),
    .rst(reset),
    .load(1'b0),
    .direction(1'b0),
    .data_in(sum_out),
    .data_out(barrel_shifter_out)
);

sum sum_inst(
    .a(counter),
    .b(count_set_bits_out),
    .out(sum_out)
);

always @(posedge clk) begin
    if (reset) begin
        counter <= 4'b0000;
    end else begin
        counter <= counter + 1;
    end
end

assign q = barrel_shifter_out;

endmodule

module count_set_bits (
    input [3:0] in,
    output reg [2:0] out
);

always @(*) begin
    case (in)
        4'b0000: out = 3'b000;
        4'b0001: out = 3'b001;
        4'b0010: out = 3'b001;
        4'b0011: out = 3'b010;
        4'b0100: out = 3'b001;
        4'b0101: out = 3'b010;
        4'b0110: out = 3'b010;
        4'b0111: out = 3'b011;
        4'b1000: out = 3'b001;
        4'b1001: out = 3'b010;
        4'b1010: out = 3'b010;
        4'b1011: out = 3'b011;
        4'b1100: out = 3'b010;
        4'b1101: out = 3'b011;
        4'b1110: out = 3'b011;
        4'b1111: out = 3'b100;
    endcase
end

endmodule

module barrel_shifter (
    input clk,
    input rst,
    input load,
    input direction,
    input [3:0] data_in,
    output reg [3:0] data_out
);

reg [3:0] shift_reg;

always @(posedge clk) begin
    if (rst) begin
        shift_reg <= 4'b0000;
    end else if (load) begin
        shift_reg <= data_in;
    end else begin
        if (direction) begin
            shift_reg <= {shift_reg[2:0], 1'b0};
        end else begin
            shift_reg <= {1'b0, shift_reg[3:1]};
        end
    end
end

assign data_out = shift_reg;

endmodule