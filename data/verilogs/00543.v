module net2pci_dma_512x32 (
    aclr,
    clock,
    data,
    rdreq,
    wrreq,
    almost_empty,
    almost_full,
    empty,
    full,
    q,
    usedw
);

input   aclr;
input   clock;
input   [31:0] data;
input   rdreq;
input   wrreq;
output  almost_empty;
output  almost_full;
output  empty;
output  full;
output  [31:0] q;
output  [8:0] usedw;

reg [31:0] buffer [0:511];
reg [8:0] write_ptr = 0;
reg [8:0] read_ptr = 0;
reg [8:0] used_words = 0;

assign q = buffer[read_ptr];
assign usedw = used_words;

always @(posedge clock) begin
    if (aclr) begin
        write_ptr <= 0;
        read_ptr <= 0;
        used_words <= 0;
    end else begin
        if (wrreq && !full) begin
            buffer[write_ptr] <= data;
            write_ptr <= write_ptr + 1;
            used_words <= used_words + 1;
        end
        if (rdreq && !empty) begin
            read_ptr <= read_ptr + 1;
            used_words <= used_words - 1;
        end
    end
end

assign almost_empty = (used_words <= 8);
assign almost_full = (used_words >= 504);
assign empty = (used_words == 0);
assign full = (used_words == 512);

endmodule