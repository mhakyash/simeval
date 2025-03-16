module pipeline_reg1(clk, reset, toPCInc, toPC, toIR, PCInc, PC, IR,tofirst_multiple,first_multiple,flush); // First pipeline register

    output first_multiple;
    output [15:0] PCInc, PC, IR;
    input  [15:0] toPCInc, toPC, toIR;
    input        reset, clk;
    input tofirst_multiple, flush;
    wire [15:0] inIR;
    wire infirst_multiple;
    
    assign infirst_multiple = (flush == 1'b1) ? 1'b0 : tofirst_multiple; // introduce a NOP, in the event of a flush
    assign inIR = (flush == 1'b1) ? 16'b1111000000000000 : toIR; // introduce a NOP, in the event of a flush
    
    register1 pipe1first_multiple(.clk(clk), .out(first_multiple), .in(infirst_multiple), .write(1'b0), .reset(reset));
    register16 pipe1IncPC(.clk(clk), .out(PCInc), .in(toPCInc), .write(1'b0), .reset(reset));
    register16 pipe1PC(.clk(clk), .out(PC), .in(toPC), .write(1'b0), .reset(reset));
    register16 pipe1IR(.clk(clk), .out(IR), .in(inIR), .write(1'b0), .reset(reset));
    
endmodule