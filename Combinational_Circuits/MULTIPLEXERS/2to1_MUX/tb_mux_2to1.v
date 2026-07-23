module tb_mux_2x1;

reg i0,i1,sel;
wire Y;

mux_2x1 dut(.i0(i0),
             .i1(i1),
             .sel(sel),
             .Y(Y));

           initial begin
            $dumpfile("mux_2x1.vcd");
            $dumpvars(0,tb_mux_2x1);

            $monitor($time, "i0=%d, i1=%d, sel=%d, Y=%d",i0,i1,sel,Y);
            sel=1'b0; i0=0; i1=0;
            #5;
            sel=1'b0; i0=1; i1=0;
            #5;
            sel=1'b1; i0=0; i1=1;
            #5;
            $finish;
           end  

endmodule
