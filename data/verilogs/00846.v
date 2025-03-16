module pipelined_addsub (
    input [3:0] a,
    input [3:0] b,
    input mode,
    output reg [3:0] out,
    output reg overflow
);

reg [3:0] sum1, sum2;
reg [3:0] diff1, diff2;
reg [3:0] a_reg, b_reg;
reg mode_reg;

always @(*) begin
    a_reg = a;
    b_reg = b;
    mode_reg = mode;
end

// Stage 1: Calculate sum and difference
always @(*) begin
    if (mode_reg == 0) begin
        sum1 = a_reg + b_reg;
        diff1 = a_reg - b_reg;
    end else begin
        sum1 = a_reg - b_reg;
        diff1 = a_reg + b_reg;
    end
end

// Stage 2: Calculate overflow flag
always @(*) begin
    if (mode_reg == 0) begin
        if (sum1[3] != a_reg[3] && sum1[3] != b_reg[3]) begin
            overflow = 1;
        end else begin
            overflow = 0;
        end
    end else begin
        if (diff1[3] != a_reg[3] && diff1[3] == b_reg[3]) begin
            overflow = 1;
        end else begin
            overflow = 0;
        end
    end
end

// Stage 3: Register sum and difference
always @(posedge clk) begin
    sum2 <= sum1;
    diff2 <= diff1;
end

// Stage 4: Output sum or difference based on mode
always @(posedge clk) begin
    if (mode_reg == 0) begin
        out <= sum2;
    end else begin
        out <= diff2;
    end
end

endmodule