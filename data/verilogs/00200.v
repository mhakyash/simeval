module buffer #(
    parameter AW = 8, // address width
    parameter DW = 8  // data width
) (
    input clock,
    input write_clock_enable,
    input [DW-1:0] write_data,
    input [AW-1:0] write_addr,
    input read_clock_enable,
    output reg [DW-1:0] read_data,
    input [AW-1:0] read_addr
);

    reg [DW-1:0] mem [0:(2**AW)-1]; // memory array
    
    always @(posedge clock) begin
        if (write_clock_enable) begin
            mem[write_addr] <= write_data;
        end
    end
    
    always @(posedge clock) begin
        if (read_clock_enable) begin
            read_data <= mem[read_addr];
        end
    end
    
endmodule