module binary_search (
    input [15:0] array [7:0],
    input [15:0] search_key,
    output reg [2:0] index
);

    reg [2:0] low = 0;
    reg [2:0] high = 7;
    reg [2:0] mid;
    reg found = 0;

    always @(*) begin
        while (low <= high && !found) begin
            mid = (low + high) / 2;
            if (array[mid] == search_key) begin
                index = mid;
                found = 1;
            end else if (array[mid] < search_key) begin
                low = mid + 1;
            end else begin
                high = mid - 1;
            end
        end
        if (!found) begin
            index = -1;
        end
    end

endmodule