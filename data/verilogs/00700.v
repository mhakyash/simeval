module binary_puncture_encoder (
    din,
    mask,
    dout,
    ndout
    );

input [7:0] din;
input [7:0] mask;
output [7:0] dout;
output [3:0] ndout;

reg [7:0] temp;

always @*
begin
    case (mask)
        8'b1111_1111: begin
            ndout = 8;
            dout = din;
        end
        8'b1110_1110: begin
            ndout = 6;
            temp = {din[7:1]};
            dout = {temp, 2'b00};
        end
        8'b1110_0111: begin
            ndout = 6;
            temp = {din[7], din[5:0]};
            dout = {temp, 2'b00};
        end
        8'b1001_1110: begin
            ndout = 5;
            temp = {din[7], din[4:2]};
            dout = {temp, 3'b000};
        end
        8'b0111_1001: begin
            ndout = 5;
            temp = {din[6:4], din[0]};
            dout = {temp, 3'b000};
        end
        default: begin
            ndout = 0;
            dout = 0;
        end
    endcase
end

endmodule