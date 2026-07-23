`timescale 1ns / 1ps
module tb_sync_dff;
reg d;
reg clk;
reg reset;
wire q;

sync_dff dut(
    .d(d),
    .clk(clk),
    .reset(reset),
    .q(q)
);

always #5 clk = ~clk;

initial begin
    $dumpfile("sync_dff.vcd");
    $dumpvars(0, tb_sync_dff);

$monitor("$time = %0t  d = %b clk = %b reset = %b  q = %b", $time, d, clk, reset, q);

  clk = 0; reset = 0; d = 0;

  #5 reset = 1; 
  #10 reset = 0;

  #10 d = 1;

  #10 d = 0;

  #10 d = 1;

  $finish;

end

endmodule

