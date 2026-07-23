`timescale 1ps/1ps
module tb_down_counter_4bit;
reg clk;
reg reset;
wire [3:0]count;

down_counter_4bit dut(
    .clk(clk),
    .reset(reset),
    .count(count)
);

always #5 clk = ~clk;

initial begin
      $dumpfile("down_counter_4bit.vcd");
      $dumpvars(0, tb_down_counter_4bit);

  $monitor("$time = %0t  clk = %b reset = %b count = %b", $time, clk, reset, count);

  clk = 0; reset = 1;

  #5;

  reset = 0;

#550;

 $finish;

end

endmodule
