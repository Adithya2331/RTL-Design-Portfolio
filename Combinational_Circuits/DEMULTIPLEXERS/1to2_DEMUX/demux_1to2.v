module demux_1to2(input din,
                  input sel,
                  output y0,
                  output y1
                  );

     assign y0 = (sel == 1'b0) ? din : 1'b0;

     assign y1 = (sel == 1'b1) ? din : 1'b0;

endmodule             
