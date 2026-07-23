module mux_2x1(input i0,i1,sel,
                output Y);

                assign Y = sel ? i1 : i0;

endmodule
