`timescale 1ns / 1ps
module tb_demux_1to2;
reg din;
reg sel;
wire y0;
wire y1;

demux_1to2 dut(
    .din(din),
    .sel(sel),
    .y0(y0),
    .y1(y1)
);

initial begin
    $dumpfile("demux_1to2.vcd");
    $dumpvars(0, tb_demux_1to2);

    $monitor("$time = %0t  din = %b sel = %b  y0 = %b y1 = %b",$time, din, sel, y0, y1);

    din = 1'b0; sel = 1'b0; #10;

    din = 1'b1; sel = 1'b0; #10;

    din = 1'b1; sel = 1'b1; #10;

    din = 1'b0; sel = 1'b1; #10;

    $finish;
end

endmodule

    
