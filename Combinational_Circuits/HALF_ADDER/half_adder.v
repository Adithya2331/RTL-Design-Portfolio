module half_adder(input A, B,
                output S, C0);

                assign S = A ^ B;
                assign C0 = A & B;

endmodule


