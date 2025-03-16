module logic_module (
    input IN1,
    input IN2,
    input IN3,
    output Q
);

    wire AND_output;
    
    assign AND_output = IN1 & IN2;
    
    assign Q = AND_output & ~IN3;

endmodule