`timescale 1ns / 1ps
module tb_SR_FlipFlop;
reg s;
reg r;
reg clk;
wire q;

SR_FlipFlop dut(
    .s(s),
    .r(r),
    .clk(clk),
    .q(q)
);

always #5 clk = ~clk;

initial begin
    $dumpfile("SR_FlipFlop.vcd");
    $dumpvars(0, tb_SR_FlipFlop);
    
        clk = 0; s = 0; r = 0;
    

    $monitor("$time = %0t  s = %b r = %b clk = %b  q = %b", $time, s, r, clk, q);

                 #10 

             s = 0; r = 1; #10;

             s = 0; r = 0; #10;            

             s = 1; r = 0; #10;

             s = 1; r = 1; #10;

    $finish;
end

endmodule
