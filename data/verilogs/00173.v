module mux2to1 (
                input data_in_0,
                input data_in_1,
                input select,
                output data_out
                );
    assign data_out = select ? data_in_1 : data_in_0;
endmodule