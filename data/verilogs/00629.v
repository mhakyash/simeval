module ShiftRegister #(
    parameter WIDTH = 8
)(
    input clk,
    input rst,
    input load,
    input shift,
    input [WIDTH-1:0] dataIn,
    output reg [WIDTH-1:0] dataOut
);

reg [WIDTH-1:0] register;

always @(posedge clk) begin
    if (rst) begin
        register <= 0;
    end
    else if (load) begin
        register <= dataIn;
    end
    else if (shift) begin
        register <= {register[WIDTH-2:0], register[WIDTH-1]};
    end
end

assign dataOut = register;

endmodule