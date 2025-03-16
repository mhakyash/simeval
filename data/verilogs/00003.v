module shift_reg (
    input clk,
    input rst_n,
    input [7:0] d,
    output reg [3:0] q
);

    always @(posedge clk) begin
        if (~rst_n) begin
            q <= 4'b0000;
        end else begin
            q <= {q[2:0], d[7]};
        end
    end

endmodule

module dual_port_ram (
    input clk,
    input [3:0] read_addr,
    input [3:0] write_addr,
    input [7:0] write_data,
    input write_en,
    input read_en,
    output reg [7:0] read_data
);

    reg [7:0] ram [0:7];

    always @(posedge clk) begin
        if (write_en) begin
            ram[write_addr] <= write_data;
        end
    end

    always @(*) begin
        if (read_en) begin
            read_data = ram[read_addr];
        end
    end

endmodule

module top_module (
    input clk,
    input rst_n,
    input [7:0] d,
    input write_en,
    input [7:0] write_addr,
    output [7:0] q
);

    wire [7:0] ram_data_out;
    wire [3:0] read_addr;
    wire [3:0] write_addr;
    wire [7:0] write_data;
    wire read_en;
    
    shift_reg shift_reg_inst (
        .clk(clk),
        .rst_n(rst_n),
        .d(d),
        .q(write_data[7:0])
    );
    
    dual_port_ram dual_port_ram_inst (
        .clk(clk),
        .read_addr(read_addr),
        .write_addr(write_addr),
        .write_data(write_data),
        .write_en(write_en),
        .read_en(read_en),
        .read_data(ram_data_out)
    );
    
    assign read_addr = q[3:0];
    assign write_addr = q[3:0];
    
    always @(posedge clk) begin
        if (~rst_n) begin
            q <= 8'b00000000;
        end else begin
            q <= ram_data_out;
        end
    end

endmodule