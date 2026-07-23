`timescale 1ns / 1ps
module tb_demux_1to4;
reg din;
reg [1:0]sel;
wire y0, y1, y2, y3;

demux_1to4 dut(
    .din(din),
    .sel(sel),
    .y0(y0),
    .y1(y1),
    .y2(y2),
    .y3(y3)
);

initial begin
    $dumpfile("demux_1to4.vcd");
    $dumpvars(0, tb_demux_1to4);

    $monitor("$time = %0t  din= %b sel = %b  y0 = %b y1 = %b y2 = %b y3 = %b", $time, din, sel,y0, y1, y2, y3);

    din = 1'b0; sel = 2'b00; #10;

    din = 1'b1; sel = 2'b00; #10;

    din = 1'b0; sel = 2'b01; #10;

    din = 1'b1; sel = 2'b01; #10;

    din = 1'b0; sel = 2'b10; #10;

    din = 1'b1; sel = 2'b10; #10;

    din = 1'b0; sel = 2'b11; #10;

    din = 1'b0; sel = 2'b11; #10;

    din = 1'b0; sel = 2'b11; #10;
    $finish;
end 
endmodule
