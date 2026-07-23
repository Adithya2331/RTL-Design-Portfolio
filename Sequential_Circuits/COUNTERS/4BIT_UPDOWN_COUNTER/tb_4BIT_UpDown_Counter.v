`timescale 1ps/1ps
module tb_updown_counter_4bit;
reg clk;
reg reset;
reg up_down;
wire [3:0]count;

updown_counter_4bit dut(
    .clk(clk),
    .reset(reset),
    .up_down(up_down),
    .count(count)
);

   always #5 clk = ~clk;

initial begin
    $dumpfile("updown_counter_4bit.vcd");
    $dumpvars(0, tb_updown_counter_4bit);

    $monitor("$time = %0t  clk = %b reset = %b up_down = %b  count = %b", $time, clk, reset, up_down, count);

    clk = 0; reset = 1;

    #10;
    
     up_down = 1;
    reset = 0;

    #100;

    up_down = 0;
    #100;

    $finish;

end

endmodule
