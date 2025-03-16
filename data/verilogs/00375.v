module ctrlunit(
    input [5:0] OPCode, Funct,
    output MemToReg, MemWrite, Branch, ALUSrc, RegDst, RegWrite, Jump,
    output [2:0] ALUControl, PCSrc
    );

    wire [1:0] ALUOp;
    wire ZeroSignal;

    maindecoder md_inst(
        .op( OPCode ),
        .memtoreg( MemToReg ),
        .memwrite( MemWrite ),
        .branch( Branch ),
        .alusrc( ALUSrc ),
        .regdst( RegDst ),
        .regwrite( RegWrite ),
        .jump( Jump ),
        .aluop( ALUOp )
    );

    aludecoder  ad_inst(
        .funct( Funct ),
        .aluop( ALUOp ),
        .alucontrol( ALUControl )
    );

    assign ZeroSignal = 1'b0; // Placeholder for ZeroSignal

    assign PCSrc = Branch & ZeroSignal;

endmodule