module chatgpt_generate_RAM (
    input clk,
    input rst_n,
    input write_en,
    input [7:0] write_addr,
    input [3:0] write_data,
    input read_en,
    input [7:0] read_addr,
    output reg [3:0] read_data
);

reg [3:0] ram [0:7];
reg [2:0] write_ptr;
reg [2:0] read_ptr;

always @(posedge clk or negedge rst_n) begin
    if (~rst_n) begin
        write_ptr <= 0;
        read_ptr <= 0;
    end else begin
        if (write_en) begin
            ram[write_ptr][3:0] <= write_data;
            write_ptr <= write_ptr + 1;
        end
        if (read_en) begin
            read_data <= ram[read_ptr][3:0];
            read_ptr <= read_ptr + 1;
        end
    end
end

endmodule