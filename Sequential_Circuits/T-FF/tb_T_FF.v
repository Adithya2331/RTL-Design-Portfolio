`timescale 1ns / 1ps
module tb_t_ff;
reg t;
reg clk;
reg reset;
wire q;

t_ff dut(
    .t(t),
    .clk(clk),
    .reset(reset),
    .q(q)
);

always #5 clk = ~clk;

initial begin
    $dumpfile("t_ff.vcd");
    $dumpvars(0, tb_t_ff);

    $monitor("$time = %0t  t = %b clk = %b reset = %b  q = %b", $time, t, clk, reset, q);

    clk = 0; reset = 1; t = 0; 

    #10 reset = 0;

    #10  t = 1;

    #10  t = 0;

    #10 t = 1;
    
    $finish;

end

 endmodule
