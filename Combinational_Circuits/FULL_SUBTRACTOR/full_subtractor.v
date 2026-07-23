module full_subtractor(input A,B,Bin,
                      output D, B0 );

                      assign D = A ^ B ^ Bin;
                      assign B0 = A&B | A&Bin | B&Bin;

endmodule
