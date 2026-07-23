`timescale 1ns / 1ps
module tb_SR_Latch;
reg s;
reg r;
reg ena;
wire q;

SR_Latch dut(
    .s(s),
    .r(r),
    .ena(ena),
    .q(q)
    );

    initial begin 
        $dumpfile("SR_Latch.vcd");
        $dumpvars(0, tb_SR_Latch);

   $monitor("$time = %0t  s = %b r = %b ena = %b  q = %b", $time, s, r, ena, q);

    ena = 1; s= 0; r = 1;  #10;

    ena = 1; s = 0; r = 0;  #10;

    ena = 1; s = 1; r = 0; #10;

    ena = 0; s= 0; r = 0;  #10;

    ena = 1; s= 1; r = 1;  #10;  

    $finish;
    end
endmodule
