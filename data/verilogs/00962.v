module instruction_fetch(
    input wire clk,
    input wire nrst,
    input wire [31:0] addr,
    input wire rd_cmd,
    output wire [31:0] instr_dat,
    output wire busy,
    output wire err_align,
    output wire err_bus,
    output reg [31:0] o_IAddr,
    output reg o_IRdC,
    input wire [31:0] i_IData,
    input wire i_IRdy,
    input wire i_IErr
);

    localparam IDLE = 1'b0;
    localparam WAIT = 1'b1;

    reg [31:0] lch_idata;
    reg state;

    assign err_align = (rd_cmd == 1'b1 && addr[1:0] != 2'b00);

    wire active = (!err_align && !i_IErr && rd_cmd == 1'b1);

    assign busy = ((active || (state == WAIT)) && !i_IRdy);

    assign err_bus = i_IErr;

    always @(*) begin
        o_IAddr = 32'b0;
        o_IRdC = 1'b0;

        if(active) begin
            o_IAddr = addr;
            o_IRdC = 1'b1;
        end
    end

    always @(posedge clk or negedge nrst) begin
        if(!nrst) begin
            state <= IDLE;
            lch_idata <= {32{1'b0}};
        end
        else begin
            if(state == IDLE && (active && i_IRdy)) begin
                lch_idata <= i_IData;
            end
            else if(state == IDLE && (active && !i_IRdy)) begin
                state <= !i_IErr ? WAIT : IDLE;
            end
            else if(state == WAIT && i_IRdy) begin
                state <= IDLE;
                lch_idata <= i_IData;
            end
        end
    end

    assign instr_dat = (active || state == WAIT) ? i_IData : lch_idata;

endmodule