module WB_intercon (
    input master_STB,
    input [31:0] master_DAT_I,
    output [31:0] master_DAT_O,
    output master_ACK,
    input master_WE,
    input [31:0] master_ADDR,
    output reg [15:0] slave_STB,
    input [15:0] slave_ACK,
    output reg slave_WE,
    output reg [31:0] slave_DAT_I,
    input [31:0] slave_DAT_O,
    output reg [31:0] slave_ADDR
);

reg [31:0] slave_data_mem [0:65535];

always @(posedge master_STB) begin
    if (master_WE) begin
        slave_data_mem[master_ADDR[15:0]] <= master_DAT_I;
        slave_STB <= 1;
        slave_WE <= 1;
        slave_DAT_I <= 0;
        slave_ADDR <= master_ADDR;
    end else begin
        master_DAT_O <= slave_data_mem[master_ADDR[15:0]];
        slave_STB <= 1;
        slave_WE <= 0;
        slave_DAT_I <= master_DAT_I;
        slave_ADDR <= master_ADDR;
    end
end

always @(posedge slave_ACK) begin
    if (slave_ACK) begin
        slave_STB <= 0;
    end
end

always @(posedge slave_ACK) begin
    if (slave_ACK && slave_WE) begin
        slave_data_mem[slave_ADDR[15:0]] <= slave_DAT_O;
    end
end

always @(posedge slave_ACK) begin
    if (slave_ACK && !slave_WE) begin
        master_ACK <= 1;
    end
end

always @(posedge slave_ACK) begin
    if (slave_ACK && master_STB) begin
        master_ACK <= 0;
    end
end

endmodule