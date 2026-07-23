module full_adder(input A,B,Cin,
                  output S,C0);

                  assign S = A ^ B ^ Cin;
                   assign C0 = A & B | B & Cin | Cin & A;

                   endmodule
