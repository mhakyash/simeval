module bit_change_detector (
    input clk,
    input reset,
    input in,
    output reg out
);

reg last_in;

always @(posedge clk) begin
    if (reset) begin
        out <= 1'b0;
        last_in <= 1'b0;
    end
    else begin
        if (in != last_in) begin
            out <= 1'b1;
        end
        else begin
            out <= 1'b0;
        end
        last_in <= in;
    end
end

endmodule
module dual_port_RAM (
    input clk,
    input rst_n,
    input write_en,
    input [7:0] write_addr,
    input [7:0] write_data,
    input read_en,
    input [7:0] read_addr,
    output reg [7:0] read_data
);

reg [7:0] mem [0:255];

always @(posedge clk) begin
    if (!rst_n) begin
        read_data <= 8'b0;
    end
    else begin
        if (write_en) begin
            mem[write_addr] <= write_data;
        end
        if (read_en) begin
            read_data <= mem[read_addr];
        end
    end
end

endmodule
module top_module (
    input clk,
    input reset,
    input [31:0] in,
    output reg [7:0] pos_ram_read_data,
    output reg [7:0] time_ram_read_data
);

reg [7:0] pos_ram_addr;
reg [7:0] time_ram_addr;
reg [7:0] last_pos;
reg [31:0] last_time;

bit_change_detector bcd (
    .clk(clk),
    .reset(reset),
    .in(in[0]),
    .out(pos_ram_addr[0])
);

bit_change_detector bcd_array [31:0] (
    .clk(clk),
    .reset(reset),
    .in(in),
    .out(pos_ram_addr)
);

dual_port_RAM pos_ram (
    .clk(clk),
    .rst_n(!reset),
    .write_en(pos_ram_addr != last_pos),
    .write_addr(pos_ram_addr),
    .write_data(in[7:0]),
    .read_en(1'b1),
    .read_addr(pos_ram_addr),
    .read_data(pos_ram_read_data)
);

dual_port_RAM time_ram (
    .clk(clk),
    .rst_n(!reset),
    .write_en(pos_ram_addr != last_pos),
    .write_addr(pos_ram_addr),
    .write_data($time - last_time),
    .read_en(1'b1),
    .read_addr(pos_ram_addr),
    .read_data(time_ram_read_data)
);

always @(posedge clk) begin
    if (reset) begin
        pos_ram_addr <= 8'b0;
        time_ram_addr <= 8'b0;
        last_pos <= 8'b0;
        last_time <= $time;
    end
    else begin
        if (pos_ram_addr != last_pos) begin
            time_ram_addr <= pos_ram_addr;
        end
        last_pos <= pos_ram_addr;
        last_time <= $time;
    end
end

endmodule
