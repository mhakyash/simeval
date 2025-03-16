module singlecycleprocessor (
    input clk, reset,
    output reg [15:0] WAinstrD, WAinstrF, jumpaddr
);

    /* Registers */
    reg [15:0] PC;
    reg [15:0] IR;
    reg [15:0] A;
    reg [15:0] B;
    reg [15:0] ALUOut;
    reg [3:0] opcode;
    reg [3:0] funct;

    /* Control Signals */
    reg RegWrite;
    reg MemRead;
    reg MemWrite;
    reg ALUSrc;
    reg [1:0] ALUOp;
    reg Branch;
    reg Jump;

    /* Memory */
    reg [15:0] mem [0:255];

    /* Instruction Fetch (IF) */
    wire [15:0] PCPrime;
    assign PCPrime = Branch ? {PC[14:0], IR[7:0], 1'b0} : PC + 1;
    wire [15:0] PCJump;
    assign PCJump = {PC[15:12], IR[7:0], 1'b0};

    /* Instruction Decode (ID) */
    assign opcode = IR[15:12];
    assign funct = IR[3:0];
    wire [3:0] rs = IR[11:8];
    wire [3:0] rt = IR[7:4];
    wire [3:0] rd = IR[3:0];
    wire [15:0] sign_ext = {{12{IR[3]}}, IR[2:0], 12'b0};

    /* Execution (EX) */
    wire [15:0] ALUIn2;
    assign ALUIn2 = ALUSrc ? sign_ext : B;
    wire [15:0] ALUOut;
    assign ALUOut = (ALUOp == 2'b00) ? A + ALUIn2 :
                    (ALUOp == 2'b01) ? A - ALUIn2 :
                    (ALUOp == 2'b10) ? A & ALUIn2 :
                    (ALUOp == 2'b11) ? A | ALUIn2 :
                    A ^ ALUIn2;

    /* Memory (MEM) */
    wire [15:0] MemOut;
    assign MemOut = mem[ALUOut];

    /* Write Back (WB) */
    always @(posedge clk) begin
        if (reset) begin
            A <= 0;
            B <= 0;
            PC <= 0;
            IR <= 0;
            RegWrite <= 0;
            MemRead <= 0;
            MemWrite <= 0;
            ALUSrc <= 0;
            ALUOp <= 0;
            Branch <= 0;
            Jump <= 0;
        end else begin
            IR <= mem[PC];
            A <= (RegWrite && (rd != 4'b0000)) ? ALUOut : A;
            B <= (RegWrite && (rd == 4'b0000)) ? ALUOut : B;
            PC <= Jump ? PCJump : PCPrime;
            RegWrite <= (opcode == 4'b0000) ? 1'b1 : 1'b0;
            MemRead <= (opcode == 4'b0010) ? 1'b1 : 1'b0;
            MemWrite <= (opcode == 4'b0011) ? 1'b1 : 1'b0;
            ALUSrc <= (opcode == 4'b0000 || opcode == 4'b0001 || opcode == 4'b0010) ? 1'b0 : 1'b1;
            ALUOp <= (opcode == 4'b0000) ? 2'b00 :
                     (opcode == 4'b0001) ? 2'b01 :
                     (opcode == 4'b0010) ? 2'b10 :
                     (opcode == 4'b0011 && funct == 4'b0000) ? 2'b00 :
                     (opcode == 4'b0011 && funct == 4'b0001) ? 2'b01 :
                     (opcode == 4'b0011 && funct == 4'b0010) ? 2'b10 :
                     (opcode == 4'b0011 && funct == 4'b0011) ? 2'b11 :
                     2'b00;
            Branch <= (opcode == 4'b0001 && A == B) ? 1'b1 : 1'b0;
            Jump <= (opcode == 4'b0011 && funct == 4'b0100) ? 1'b1 : 1'b0;
        end
    end

    /* Memory */
    always @(posedge clk) begin
        if (MemWrite) begin
            mem[ALUOut] <= B;
        end
    end

    /* Outputs */
    assign WAinstrD = IR;
    assign WAinstrF = mem[PC];
    assign jumpaddr = PCJump;

endmodule