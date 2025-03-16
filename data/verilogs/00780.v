module CPU(
    input clk,
    input reset,
    input [31:0] imDataOut,
    input [31:0] rfReadData1,
    input [31:0] rfReadData2,
    input [31:0] dbdrDataOut,
    output [2:0] state,
    output reg [31:0] pcAddressOut,
    output reg [31:0] pcAddressOutNext,
    output reg [31:0] aluResult,
    output reg [31:0] dmDataOut
);

    reg [31:0] instruction;
    reg [31:26] op;
    reg [25:21] rs;
    reg [20:16] rt;
    reg [15:11] rd;
    reg [10:6] sa;
    reg [15:0] imm;
    reg [25:0] address;

    reg [31:0] readData1;
    reg [31:0] readData2;
    reg [31:0] writeData;
    reg [31:0] memData;

    reg [4:0] aluOp;
    reg [4:0] memOp;
    reg [4:0] regWrite;

    reg [31:0] aluInput1;
    reg [31:0] aluInput2;
    reg [31:0] aluOutput;

    reg [31:0] pcAddressNext;
    reg [31:0] branchAddress;

    reg [31:0] jumpAddress;

    reg [31:0] regFile [31:0];

    assign op = instruction[31:26];
    assign rs = instruction[25:21];
    assign rt = instruction[20:16];
    assign rd = instruction[15:11];
    assign sa = instruction[10:6];
    assign imm = instruction[15:0];
    assign address = instruction[25:0];

    always @(posedge clk) begin
        if (reset) begin
            pcAddressOut <= 0;
            pcAddressNext <= 0;
            state <= 3'b000;
        end else begin
            pcAddressOut <= pcAddressNext;
            pcAddressNext <= pcAddressOut + 4;
            instruction <= imDataOut;
            readData1 <= regFile[rs];
            readData2 <= regFile[rt];
            aluInput1 <= readData1;
            aluInput2 <= (op == 6'b001111) ? {16'b0, imm} : readData2;
            aluOp <= (op == 6'b000000) ? instruction[5:0] : 5'b00000;
            memOp <= (op == 6'b100011 || op == 6'b101011) ? 5'b00010 : 5'b00000;
            regWrite <= (op == 6'b000000 || op == 6'b001000 || op == 6'b100011) ? 5'b00001 : 5'b00000;
            case (op)
                6'b000000: begin
                    case (instruction[5:0])
                        6'b100000: aluOutput <= aluInput1 + aluInput2;
                        6'b100010: aluOutput <= aluInput1 - aluInput2;
                        6'b100100: aluOutput <= aluInput1 & aluInput2;
                        6'b100101: aluOutput <= aluInput1 | aluInput2;
                        default: aluOutput <= 0;
                    endcase
                end
                6'b001000: aluOutput <= aluInput1 + imm;
                6'b100011: begin
                    memData <= dbdrDataOut;
                    if (memOp == 5'b00010) begin
                        case (instruction[1:0])
                            2'b00: writeData <= {memData[7:0], readData2[31:8]};
                            2'b01: writeData <= {memData[15:0], readData2[31:16]};
                            2'b10: writeData <= {memData[23:0], readData2[31:24]};
                            2'b11: writeData <= {memData[31:0]};
                        endcase
                    end
                end
                6'b101011: memData <= {dbdrDataOut, memData[31:8]};
                default: aluOutput <= 0;
            endcase
            case (regWrite)
                5'b00001: regFile[rd] <= aluOutput;
                default: regFile[rd] <= regFile[rd];
            endcase
            case (op)
                6'b000100: begin
                    if (readData1 == readData2) begin
                        branchAddress <= pcAddressOut + (imm << 2) + 4;
                        pcAddressNext <= branchAddress;
                    end
                end
                6'b000010: begin
                    jumpAddress <= {pcAddressOut[31:28], address, 2'b00};
                    pcAddressNext <= jumpAddress;
                end
                default: pcAddressNext <= pcAddressNext;
            endcase
        end
    end

    always @(posedge clk) begin
        if (reset) begin
            dmDataOut <= 0;
        end else begin
            case (memOp)
                5'b00010: dmDataOut <= memData;
                default: dmDataOut <= 0;
            endcase
        end
    end

    assign state = {memOp, aluOp, regWrite};

endmodule