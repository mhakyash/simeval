module shift_register(clk, reset, load, data_in, data_out);

parameter WIDTH = 16;

input clk, reset, load;
input [WIDTH-1:0] data_in;
output [WIDTH-1:0] data_out;

reg [WIDTH-1:0] register;

always @(posedge clk or posedge reset) begin
    if (reset) begin
        register <= 0;
    end else begin
        if (load) begin
            register <= data_in;
        end else begin
            register <= {register[WIDTH-2:0], 1'b0};
        end
    end
end

assign data_out = register;

endmodule