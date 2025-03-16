module RAM16K (
    input CLK1,
    input [8:0] A1ADDR,
    input A1EN,
    output reg [31:0] A1DATA,
    input [8:0] B1ADDR,
    input [31:0] B1DATA,
    input B1EN
);

    parameter [4095:0] INIT = 4096'bx;

    reg [31:0] ram [0:4095];

    always @(posedge CLK1) begin
        if (A1EN) begin
            A1DATA <= ram[A1ADDR];
        end

        if (B1EN) begin
            ram[B1ADDR] <= B1DATA;
        end
    end

    // Initialize RAM with INIT value
    integer i;
    initial begin
        for (i = 0; i < 4096; i = i + 1) begin
            ram[i] <= INIT;
        end
    end

endmodule