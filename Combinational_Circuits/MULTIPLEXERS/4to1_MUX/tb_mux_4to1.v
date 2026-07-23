`timescale 1ns / 1ps
module tb_mux_4x1;
reg [3:0]i;
reg [1:0]sel;
wire Y;

mux_4x1 dut(
    .i(i),
    .sel(sel),
    .Y(Y)
 );

 initial begin 
    $dumpfile("mux_4x1.vcd");
    $dumpvars(0, tb_mux_4x1);

    $monitor("Time = %0t, i = %b, sel = %b, Y = %b", $time, i, sel, Y);
    
    i = 4'b1001;

    sel = 2'b00; #10;
    sel = 2'b01; #10;
    sel = 2'b10; #10;
    sel = 2'b11; #10;

    $finish;
 end
endmodule
