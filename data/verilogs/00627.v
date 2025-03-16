module RAM256 (CLK, ED, WE, ADDR, DI, DO);
    parameter nb = 8;
    output [nb-1:0] DO;
    input CLK, ED, WE;
    input [7:0] ADDR;
    input [nb-1:0] DI;
    reg [nb-1:0] mem [0:255];
    reg [7:0] addr_reg;
    
    always @(posedge CLK) begin
        if (ED) begin
            addr_reg <= ADDR;
            if (WE) begin
                mem[addr_reg] <= DI;
            end
            DO <= mem[addr_reg];
        end
    end
endmodule