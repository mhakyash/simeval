module dual_port_ram (
    address_a,
    address_b,
    clock,
    data_a,
    data_b,
    wren_a,
    wren_b,
    q_a,
    q_b
);

input [11:0] address_a;
input [11:0] address_b;
input clock;
input [7:0] data_a;
input [7:0] data_b;
input wren_a;
input wren_b;
output reg [7:0] q_a;
output reg [7:0] q_b;

reg [7:0] mem [0:3071];

always @(posedge clock) begin
    if (wren_a) begin
        mem[address_a] <= data_a;
    end
    if (wren_b) begin
        mem[address_b] <= data_b;
    end
    q_a <= mem[address_a];
    q_b <= mem[address_b];
end

endmodule