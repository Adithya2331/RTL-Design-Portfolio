`timescale 1ns / 1ps
module tb_jk_ff;
reg j;
reg k;
reg clk;
wire q;

jk_ff dut(
    .j(j),
    .k(k),
    .clk(clk),
    .q(q)
);

always #5 clk = ~clk;

initial begin
    $dumpfile("jk_ff.vcd");
    $dumpvars(0, tb_jk_ff);

       $monitor("$time = %0t  j = %b k = %b clk = %b  q = %b", $time, j, k, clk, q);

       clk = 0; j = 0; k = 0;

       #10 j = 1; k = 0;

       #10 j = 0; k = 0;

       #10 j = 1; k = 1;

       #10 j = 0; k = 1;
       $finish;
end

endmodule
