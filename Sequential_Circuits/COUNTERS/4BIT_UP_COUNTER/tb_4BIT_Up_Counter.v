`timescale 1ns / 1ps
module tb_up_counter_4bit;
reg clk;
reg reset;
wire [3:0]count;

up_counter_4bit dut(
    .clk(clk),
    .reset(reset),
    .count(count)
);

always  #5 clk = ~clk;

initial begin
    $dumpfile("up_counter_4bit.vcd");
    $dumpvars(0, tb_up_counter_4bit);

    $monitor("$time = %0t  clk = %b reset = %b  count = %b", $time, clk, reset, count);

    clk = 0;  reset = 1;

    #20
    
     reset = 0;

        #200;
        
         reset = 1;

    $finish;
end
endmodule
