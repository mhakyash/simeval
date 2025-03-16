module memory (
    input [14:0] address,
    input clock,
    input [11:0] q,
    output reg [11:0] out
);

    reg [11:0] mem [32767:0]; // 2^15 by 2^12 array
    
    always @(posedge clock) begin
        out <= mem[address];
    end
    
    always @(negedge clock) begin
        mem[address] <= q;
    end
    
endmodule