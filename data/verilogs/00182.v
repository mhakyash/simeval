module decoder_2to4_adder (
    input [1:0] in,
    input ena,
    input cin,
    output [3:0] out,
    output cout
);

// Pipeline registers
reg [1:0] in_reg;
reg ena_reg;
reg cin_reg;
reg [3:0] out_reg;
reg cout_reg;

// 2-to-4 decoder
wire [3:0] dec_out;
assign dec_out = ~(2'b11 << in);

// Adder
wire [1:0] add_in;
assign add_in = in_reg;
wire [1:0] add_out;
assign add_out = add_in + cin_reg;

// Output multiplexer
always @(*) begin
    case(dec_out)
        4'b0001: out_reg = {2'b00, add_out};
        4'b0010: out_reg = {2'b01, add_out};
        4'b0100: out_reg = {2'b10, add_out};
        4'b1000: out_reg = {2'b11, add_out};
        default: out_reg = 4'b0000;
    endcase
end

// Pipeline stages
always @(posedge clk) begin
    in_reg <= in;
    ena_reg <= ena;
    cin_reg <= cout_reg;
    out <= out_reg;
    cout <= cout_reg;
end

// Carry-out logic
assign cout_reg = add_out[2];

endmodule