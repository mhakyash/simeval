module check_float_ops(
    input clk,
    input [31:0] opa,
    input [31:0] opb,
    output inf,
    output ind,
    output qnan,
    output snan,
    output opa_nan,
    output opb_nan,
    output opa_00,
    output opb_00,
    output opa_inf,
    output opb_inf,
    output opa_dn,
    output opb_dn
);

    wire [7:0] expa, expb;
    wire [22:0] fracta, fractb;
    reg expa_ff, infa_f_r, qnan_r_a, snan_r_a;
    reg expb_ff, infb_f_r, qnan_r_b, snan_r_b;
    reg opa_nan, opb_nan;
    reg expa_00, expb_00, fracta_00, fractb_00;

    assign   expa = opa[30:23];
    assign   expb = opb[30:23];
    assign fracta = opa[22:0];
    assign fractb = opb[22:0];

    always @(posedge clk) begin
        expa_ff <= &expa;
        expb_ff <= &expb;
        infa_f_r <= !(|fracta);
        infb_f_r <= !(|fractb);
        qnan_r_a <= fracta[22];
        snan_r_a <= !fracta[22] & |fracta[21:0];
        qnan_r_b <= fractb[22];
        snan_r_b <= !fractb[22];
        ind <= (expa_ff & infa_f_r);
        inf <= (expa_ff & infa_f_r);
        qnan <= (expa_ff & qnan_r_a);
        snan <= (expa_ff & snan_r_a);
        opa_nan <= &expa & (|fracta[22:0]);
        opb_nan <= &expb & (|fractb[22:0]);
        opa_inf <= (expa_ff & infa_f_r);
        opb_inf <= (expb_ff & infb_f_r);
        expa_00 <= !(|expa);
        expb_00 <= !(|expb);
        fracta_00 <= !(|fracta);
        fractb_00 <= !(|fractb);
        opa_00 <= expa_00 & fracta_00;
        opb_00 <= expb_00 & fractb_00;
        opa_dn <= expa_00;
        opb_dn <= expb_00;
    end

    assign inf = opa_inf | opb_inf;
    assign ind = ind;
    assign qnan = qnan | qnan_r_b;
    assign snan = snan | snan_r_b;
    assign opa_nan = opa_nan;
    assign opb_nan = opb_nan;
    assign opa_00 = opa_00;
    assign opb_00 = opb_00;
    assign opa_inf = opa_inf;
    assign opb_inf = opb_inf;
    assign opa_dn = opa_dn;
    assign opb_dn = opb_dn;

endmodule