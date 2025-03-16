module Forwarding (
    input wire [4:0] EX_rs,
    input wire [4:0] EX_rt,
    input wire [4:0] MEM_rd,
    input wire [4:0] WB_rd,
    input wire MEM_RegWrite,
    input wire WB_RegWrite,
    output reg [1:0] ForwardA,
    output reg [1:0] ForwardB
    );
    // forwarding unit

    always @*
        // if ((MEM/WB.RegWrite == 1) and
        //     (MEM/WB.RegisterRd != 0) and
        //     (MEM/WB.RegisterRd == ID/EX.RegisterRs) and
        //     ((EX/MEM.RegisterRd != ID/EX.RegisterRs) or (EX/MEM.RegWrite == 0)))
        //         then ForwardA = 1
        if (WB_RegWrite && WB_rd && (WB_rd == EX_rs) &&
                ((MEM_rd != EX_rs) || (~MEM_RegWrite)))
            ForwardA = 2'b01;
        // if ((EX/MEM.RegWrite == 1) and
        //     (EX/MEM.RegisterRd != 0) and
        //     (EX/MEM.RegisterRd == ID/EX.RegisterRs))
        //         then ForwardA = 2
        else if (MEM_RegWrite && MEM_rd && (MEM_rd == EX_rs))
            ForwardA = 2'b10;
        else
            ForwardA = 2'b00;

    always @*
        // if ((MEM/WB.RegWrite == 1) and
        //     (MEM/WB.RegisterRd != 0) and
        //     (MEM/WB.RegisterRd == ID/EX.RegisterRt) and
        //     ((EX/MEM.RegisterRd != ID/EX.RegisterRt) or (EX/MEM.RegWrite == 0)))
        //         then ForwardB = 1
        if (WB_RegWrite && WB_rd && (WB_rd == EX_rt) &&
                ((MEM_rd != EX_rt) || (~MEM_RegWrite)))
            ForwardB = 2'b01;
        // if ((EX/MEM.RegWrite == 1) and
        //     (EX/MEM.RegisterRd != 0) and
        //     (EX/MEM.RegisterRd == ID/EX.RegisterRt))
        //         then ForwardB = 2
        else if (MEM_RegWrite && MEM_rd && (MEM_rd == EX_rt))
            ForwardB = 2'b10;
        else
            ForwardB = 2'b00;

endmodule