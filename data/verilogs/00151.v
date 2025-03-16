module rising_edge_detector (
    input clk,
    input reset,
    input [31:0] in,
    output reg [31:0] out
);

reg [31:0] pipeline_reg [2:0];

always @(posedge clk) begin
    if (reset) begin
        pipeline_reg[0] <= 0;
        pipeline_reg[1] <= 0;
        pipeline_reg[2] <= 0;
        out <= 0;
    end else begin
        pipeline_reg[0] <= in;
        pipeline_reg[1] <= pipeline_reg[0];
        pipeline_reg[2] <= pipeline_reg[1];
        
        out[0] <= pipeline_reg[2][0] & ~pipeline_reg[1][0] & pipeline_reg[0][0];
        out[1] <= pipeline_reg[2][1] & ~pipeline_reg[1][1] & pipeline_reg[0][1];
        out[2] <= pipeline_reg[2][2] & ~pipeline_reg[1][2] & pipeline_reg[0][2];
        out[3] <= pipeline_reg[2][3] & ~pipeline_reg[1][3] & pipeline_reg[0][3];
        out[4] <= pipeline_reg[2][4] & ~pipeline_reg[1][4] & pipeline_reg[0][4];
        out[5] <= pipeline_reg[2][5] & ~pipeline_reg[1][5] & pipeline_reg[0][5];
        out[6] <= pipeline_reg[2][6] & ~pipeline_reg[1][6] & pipeline_reg[0][6];
        out[7] <= pipeline_reg[2][7] & ~pipeline_reg[1][7] & pipeline_reg[0][7];
        out[8] <= pipeline_reg[2][8] & ~pipeline_reg[1][8] & pipeline_reg[0][8];
        out[9] <= pipeline_reg[2][9] & ~pipeline_reg[1][9] & pipeline_reg[0][9];
        out[10] <= pipeline_reg[2][10] & ~pipeline_reg[1][10] & pipeline_reg[0][10];
        out[11] <= pipeline_reg[2][11] & ~pipeline_reg[1][11] & pipeline_reg[0][11];
        out[12] <= pipeline_reg[2][12] & ~pipeline_reg[1][12] & pipeline_reg[0][12];
        out[13] <= pipeline_reg[2][13] & ~pipeline_reg[1][13] & pipeline_reg[0][13];
        out[14] <= pipeline_reg[2][14] & ~pipeline_reg[1][14] & pipeline_reg[0][14];
        out[15] <= pipeline_reg[2][15] & ~pipeline_reg[1][15] & pipeline_reg[0][15];
        out[16] <= pipeline_reg[2][16] & ~pipeline_reg[1][16] & pipeline_reg[0][16];
        out[17] <= pipeline_reg[2][17] & ~pipeline_reg[1][17] & pipeline_reg[0][17];
        out[18] <= pipeline_reg[2][18] & ~pipeline_reg[1][18] & pipeline_reg[0][18];
        out[19] <= pipeline_reg[2][19] & ~pipeline_reg[1][19] & pipeline_reg[0][19];
        out[20] <= pipeline_reg[2][20] & ~pipeline_reg[1][20] & pipeline_reg[0][20];
        out[21] <= pipeline_reg[2][21] & ~pipeline_reg[1][21] & pipeline_reg[0][21];
        out[22] <= pipeline_reg[2][22] & ~pipeline_reg[1][22] & pipeline_reg[0][22];
        out[23] <= pipeline_reg[2][23] & ~pipeline_reg[1][23] & pipeline_reg[0][23];
        out[24] <= pipeline_reg[2][24] & ~pipeline_reg[1][24] & pipeline_reg[0][24];
        out[25] <= pipeline_reg[2][25] & ~pipeline_reg[1][25] & pipeline_reg[0][25];
        out[26] <= pipeline_reg[2][26] & ~pipeline_reg[1][26] & pipeline_reg[0][26];
        out[27] <= pipeline_reg[2][27] & ~pipeline_reg[1][27] & pipeline_reg[0][27];
        out[28] <= pipeline_reg[2][28] & ~pipeline_reg[1][28] & pipeline_reg[0][28];
        out[29] <= pipeline_reg[2][29] & ~pipeline_reg[1][29] & pipeline_reg[0][29];
        out[30] <= pipeline_reg[2][30] & ~pipeline_reg[1][30] & pipeline_reg[0][30];
        out[31] <= pipeline_reg[2][31] & ~pipeline_reg[1][31] & pipeline_reg[0][31];
    end
end

endmodule

module top_module (
    input clk,
    input reset,
    input [31:0] in,
    output [31:0] out
);

rising_edge_detector detector (
    .clk(clk),
    .reset(reset),
    .in(in),
    .out(out)
);

endmodule