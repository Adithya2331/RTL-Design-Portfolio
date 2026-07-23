module half_subtractor(input A,B,
                    output D, B0);

        assign D = A ^ B;
        assign B0 = ~A & B;

endmodule
