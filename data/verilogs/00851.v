module top_module (
    input clk,
    input rst_n,
    input [7:0] write_addr,
    input [3:0] write_data,
    output reg [3:0] read_data,
    input a,
    input b,
    output out
);

wire nor_out;
wire [3:0] ram_read_data;

nor_using_nand nor_gate (
    .a(a),
    .b(b),
    .out(nor_out)
);

true_dual_port_ram ram (
    .clk(clk),
    .rst_n(rst_n),
    .write_addr(write_addr),
    .write_data(write_data),
    .read_data(ram_read_data),
    .write_en(~nor_out),
    .read_en(nor_out)
);

assign read_data = ram_read_data;
assign out = nor_out;

endmodule

module nor_using_nand (
    input a,
    input b,
    output out
);

wire nand_out;

nand nand_gate1 (
    .a(a),
    .b(b),
    .out(nand_out)
);

nand nand_gate2 (
    .a(nand_out),
    .b(nand_out),
    .out(out)
);

endmodule

module true_dual_port_ram (
    input clk,
    input rst_n,
    input [7:0] write_addr,
    input [3:0] write_data,
    output reg [3:0] read_data,
    input write_en,
    input read_en
);

reg [3:0] ram [0:7];

always @(posedge clk or negedge rst_n) begin
    if (~rst_n) begin
        read_data <= 4'b0;
    end else begin
        if (read_en) begin
            read_data <= ram[write_addr];
        end
        if (write_en) begin
            ram[write_addr] <= write_data;
        end
    end
end

endmodule