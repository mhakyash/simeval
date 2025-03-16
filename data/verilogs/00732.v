module priority_encoder (
    input [7:0] in,
    output reg [1:0] pos,
    output reg [3:0] out_sel );

    reg [7:0] in_reg1, in_reg2, in_reg3, in_reg4;
    reg [1:0] pos_reg1, pos_reg2, pos_reg3;
    reg [3:0] out_sel_reg1, out_sel_reg2;

    always @ (posedge clk) begin
        in_reg1 <= in;
        in_reg2 <= in_reg1;
        in_reg3 <= in_reg2;
        in_reg4 <= in_reg3;

        pos_reg1 <= pos;
        pos_reg2 <= pos_reg1;
        pos_reg3 <= pos_reg2;

        out_sel_reg1 <= out_sel;
        out_sel_reg2 <= out_sel_reg1;
    end

    always @ (posedge clk) begin
        if (in_reg4[7]) begin
            pos <= 3'b111;
            out_sel <= 4'b0001;
        end else if (in_reg3[7]) begin
            pos <= 3'b110;
            out_sel <= 4'b0010;
        end else if (in_reg2[7]) begin
            pos <= 3'b100;
            out_sel <= 4'b0100;
        end else if (in_reg1[7]) begin
            pos <= 3'b000;
            out_sel <= 4'b1000;
        end else begin
            pos <= 2'b00;
            out_sel <= 4'b0000;
        end
    end
endmodule

module top_module (
    input [7:0] in,
    output reg [1:0] pos,
    output reg [3:0] out_sel );

    wire [1:0] pos_wire;
    wire [3:0] out_sel_wire;

    priority_encoder pe1 (
        .in(in),
        .pos(pos_wire),
        .out_sel(out_sel_wire)
    );

    priority_encoder pe2 (
        .in(pe1.in_reg4),
        .pos(pe1.pos_reg3),
        .out_sel(pe1.out_sel_reg2)
    );

    priority_encoder pe3 (
        .in(pe2.in_reg4),
        .pos(pe2.pos_reg3),
        .out_sel(pe2.out_sel_reg2)
    );

    always @ (posedge clk) begin
        pos <= pe3.pos_reg3;
        out_sel <= pe3.out_sel_reg2;
    end
endmodule