module fifo_8_16 (
    aclr,
    data_in,
    rd_clk,
    rd_req,
    wr_clk,
    wr_req,
    data_out,
    empty,
    full
);

    input aclr;
    input [7:0] data_in;
    input rd_clk;
    input rd_req;
    input wr_clk;
    input wr_req;
    output [7:0] data_out;
    output empty;
    output full;

    parameter DEPTH = 16;

    reg [7:0] mem [DEPTH-1:0];
    reg [3:0] wr_ptr;
    reg [3:0] rd_ptr;
    wire [3:0] wr_ptr_gray;
    wire [3:0] rd_ptr_gray;
    reg [3:0] wr_ptr_next;
    reg [3:0] rd_ptr_next;
    wire wr_ptr_gray_next;
    wire rd_ptr_gray_next;
    reg [3:0] count;
    wire full;
    wire empty;

    assign full = (count == DEPTH);
    assign empty = (count == 0);
    assign data_out = mem[rd_ptr];

    always @(posedge wr_clk) begin
        if (aclr) begin
            wr_ptr <= 0;
            wr_ptr_next <= 0;
            rd_ptr <= 0;
            rd_ptr_next <= 0;
            count <= 0;
        end else if (wr_req && !full) begin
            wr_ptr <= wr_ptr_next;
            wr_ptr_next <= wr_ptr_gray_next;
            rd_ptr <= rd_ptr_next;
            rd_ptr_next <= rd_ptr_gray_next;
            mem[wr_ptr] <= data_in;
            count <= count + 1;
        end
    end

    always @(posedge rd_clk) begin
        if (aclr) begin
            wr_ptr <= 0;
            wr_ptr_next <= 0;
            rd_ptr <= 0;
            rd_ptr_next <= 0;
            count <= 0;
        end else if (rd_req && !empty) begin
            rd_ptr <= rd_ptr_next;
            rd_ptr_next <= rd_ptr_gray_next;
            wr_ptr <= wr_ptr_next;
            wr_ptr_next <= wr_ptr_gray_next;
            count <= count - 1;
        end
    end

    gray_encoder ge1 (.bin(wr_ptr_next), .gray(wr_ptr_gray_next));
    gray_encoder ge2 (.bin(rd_ptr_next), .gray(rd_ptr_gray_next));

endmodule

module gray_encoder (
    input [3:0] bin,
    output [3:0] gray
);

    assign gray[0] = bin[0];
    assign gray[1] = bin[1] ^ bin[0];
    assign gray[2] = bin[2] ^ bin[1];
    assign gray[3] = bin[3] ^ bin[2];

endmodule