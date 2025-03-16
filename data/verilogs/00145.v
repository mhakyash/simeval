module prng_module (
    input                clk,
    input                reset,
    input                [2:0] sel, // Selection input for the encoder
    input                [3:0] data0, // Input data 0 for encoder
    input                [3:0] data1, // Input data 1 for encoder
    input                [3:0] data2, // Input data 2 for encoder
    input                [3:0] data3, // Input data 3 for encoder
    input                [3:0] data4, // Input data 4 for encoder
    input                [3:0] data5, // Input data 5 for encoder
    output               [63:0] out // 64-bit output from the PRNG module
);

reg [63:0] shift_reg;
reg [5:0] enc_in;
wire [5:0] enc_out;
wire feedback;

assign feedback = shift_reg[63] ^ shift_reg[60] ^ shift_reg[52] ^ shift_reg[49];

priority_encoder_6to1 enc (
    .in0(data0),
    .in1(data1),
    .in2(data2),
    .in3(data3),
    .in4(data4),
    .in5(data5),
    .sel(sel),
    .out(enc_in)
);

always @(posedge clk) begin
    if (reset) begin
        shift_reg <= 64'h1;
    end else begin
        shift_reg <= {shift_reg[62:0], feedback};
    end
end

assign enc_out = {enc_in[5], enc_in[4], enc_in[3], enc_in[2], enc_in[1], enc_in[0]};

assign out = shift_reg;

endmodule