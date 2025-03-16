module vga_game(
    input CLK,
    input up_switch,
    input dn_switch,
    input left_switch,
    input right_switch,
    output HS,
    output VS,
    output [2:0] RED,
    output [2:0] GREEN,
    output [1:0] BLUE
);

// define constants
parameter WIDTH = 640;
parameter HEIGHT = 480;
parameter BORDER_WIDTH = 10;
parameter OBJECT_SIZE = 30;
parameter OBJECT_COLOR = 3'b111;
parameter BORDER_COLOR = 3'b111;
parameter BACKGROUND_COLOR = 2'b011;

// define wires and registers
wire [9:0] x, y;
wire blank;
reg [15:0] prescaler;
reg [9:0] o_x = $random % (WIDTH - OBJECT_SIZE);
reg [9:0] o_y = $random % (HEIGHT - OBJECT_SIZE);

// instantiate VGA module
vga v(.CLK (CLK), .HS (HS), .VS (VS), .x (x), .y (y), .blank (blank));

// define object and border wires
wire object = x>o_x & x<o_x+OBJECT_SIZE & y>o_y & y<o_y+OBJECT_SIZE;
wire border = (x>0 & x<BORDER_WIDTH) | (x>WIDTH-BORDER_WIDTH & x<WIDTH) | (y>0 & y<BORDER_WIDTH) | (y>HEIGHT-BORDER_WIDTH & y<HEIGHT);

// assign color outputs
assign RED = (border & ~ blank)?BORDER_COLOR:0;
assign GREEN = ((border | object) & ~ blank)?OBJECT_COLOR:0;
assign BLUE = (border & ~ blank)?0:BACKGROUND_COLOR;

// control object movement with switches
always @(posedge CLK)
begin
    prescaler <= prescaler + 1;
    if (prescaler == 0)
    begin
        if (~ up_switch)
        begin
            o_y <= o_y - 1;
        end
        if (~ dn_switch)
        begin
            o_y <= o_y + 1;
        end
        if (~ left_switch)
        begin
            o_x <= o_x - 1;
        end
        if (~ right_switch)
        begin
            o_x <= o_x + 1;
        end
    end
end

endmodule