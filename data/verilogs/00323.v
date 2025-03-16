module dual_port_RAM (
    input clk,
    input rst_n,
    input write_en,
    input [7:0] write_addr,
    input [3:0] write_data,
    input read_en,
    input [7:0] read_addr,
    output reg [3:0] read_data
);

reg [3:0] mem [0:7];

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        read_data <= 4'b0;
    end else begin
        if (read_en) begin
            read_data <= mem[read_addr];
        end
    end
end

always @(posedge clk) begin
    if (write_en) begin
        mem[write_addr] <= write_data;
    end
end

endmodule