module Comparator(
    input clock,
    input [63:0] data,
    input [63:0] key,
    output reg match
);

always @(posedge clock)
begin
    if (data == key)
        match <= 1;
    else
        match <= 0;
end

endmodule