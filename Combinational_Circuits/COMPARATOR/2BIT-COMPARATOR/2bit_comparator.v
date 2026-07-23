module comparator_2BIT(input [1:0]A,
                       input [1:0]B,
                       output A_greater,
                       output A_equal,
                       output A_lesser
                       );

     assign A_greater = (A[1] & ~B[1]) | ((A[1] ~^ B[1]) & (A[0] & ~B[0]));

     assign A_equal = (A[1] ~^ B[1]) & (A[0] ~^ B[0]);

     assign A_lesser = (~A[1] & B[1]) | ((A[1] ~^ B[1]) & ~A[0] & B[0]);

endmodule
