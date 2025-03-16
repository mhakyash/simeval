module level2arch (data_in,clk,nReset,cD_l2,cA_l2,cD_store);

parameter n2 = 10;

reg signed [15:0] cD_l2,cA_l2;

input [15:0] data_in;

input clk, nReset;
wire clk, nReset;

output [15:0] cD_l2, cA_l2;
output [15:0] cD_store [0:n2-2];

reg [15:0] data0, data1;
reg [2:0] count1;
reg [8:0] count2;
reg [8:0] count3;

integer i;

always @(posedge clk or negedge nReset)
begin
    if (!nReset)
    begin
        data0 <= #20 0;
        data1 <= #20 0;
        cD_l2 <= #20 0;
        cA_l2 <= #20 0;
        count1 <= #20 0;
        count2 <= #20 n2;
        count3 <= #20 0;

        for (i = 0; i <= n2-2; i = i + 1)
            cD_store[i] <= #20 0;
    end
    else
    begin
        if (count1 < 5 && count2 > 0)
        begin
            case (count1)
                0: begin
                    data0 <= #20 0;
                    data1 <= #20 0;
                    count1 <= #20 count1 + 1;
                end
                1: begin
                    if (count2 > 0)
                    begin
                        count1 <= #20 count1 + 1;
                        data0 <= #20 data_in;

                        if (count3 != 0 && count3 < n2)
                            cD_store[count3-1] <= #20 cD_l2;
                        else
                            cD_store[count3-1] <= #20 0;
                    end
                end
                2: begin
                    if (count2 > 1)
                    begin
                        data0 <= #20 data0 + data_in;
                        count1 <= #20 count1 + 1;
                    end
                end
                3: begin
                    data1 <= #20 data_in;
                    count1 <= #20 count1 + 1;
                end
                4: begin
                    cA_l2 <= #20 data0 + (data1 + data_in);
                    cD_l2 <= #20 data0 - (data1 + data_in);
                    count3 <= #20 count3 + 1;

                    count1 <= #20 1;
                    count2 <= #20 count2 - 1;
                end
                default: begin
                    data0 <= #20 0;
                    data1 <= #20 0;
                end
            endcase
        end
        else
        begin
            cD_l2 <= #20 cD_l2;
            cA_l2 <= #20 cA_l2;
            count1 <= #20 1;
        end
    end
end

endmodule