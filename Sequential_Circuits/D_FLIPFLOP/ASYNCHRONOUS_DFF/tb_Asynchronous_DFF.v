`timescale 1ns / 1ps
module tb_async_dff;
reg d;
reg clk;
reg reset;
wire q;

async_dff dut(
    .d(d),
    .clk(clk),
    .reset(reset),
    .q(q)
);

always #5 clk = ~clk;

initial begin
    $dumpfile("async_dff.vcd");
    $dumpvars(0, tb_async_dff);

    $monitor("$time = %0t  d = %b clk = %b reset = %b  q = %b", $time, d, clk, reset, q);

    clk = 0; reset = 0;  d = 0;

    #10 d = 1;

    #2 reset = 1;

    #8 reset = 0;

    #10 d = 0;


    $finish;

end
endmodule
