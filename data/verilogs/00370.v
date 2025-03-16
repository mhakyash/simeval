module digital_circuit (
    input A1,
    input A2,
    input B1,
    output Y,
    input VPB,
    input VPWR,
    input VGND,
    input VNB
);

    wire A1_not, A2_not, A1_and_A2, A1_and_A2_not, B1_and_A1_and_A2_not;
    
    // Invert A1 and A2
    not (A1_not, A1);
    not (A2_not, A2);
    
    // Calculate A1 AND A2 and its inverse
    and (A1_and_A2, A1, A2);
    not (A1_and_A2_not, A1_and_A2);
    
    // Calculate B1 AND (A1 AND A2)'
    and (B1_and_A1_and_A2_not, B1, A1_and_A2_not);
    
    // Calculate the final output
    or (Y, A1_and_A2, B1_and_A1_and_A2_not);
    
endmodule