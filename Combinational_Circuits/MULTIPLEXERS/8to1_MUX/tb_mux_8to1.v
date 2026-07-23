`timescale 1ns / 1ps
module tb_mux_8x1;
reg [7:0]i;
reg [2:0]sel;
wire Y;

mux_8x1 dut(
    .i(i),
    .sel(sel),
    .Y(Y)
);

initial begin
    $dumpfile("mux_8x1.vcd");
    $dumpvars(0,tb_mux_8x1);

    $monitor("Time = %0t, i = %b, sel = %b, Y = %b", $time, i, sel, Y);

    i = 8'b00101001;
     sel = 3'b000; #10;
     sel = 3'b001; #10;
     sel = 3'b010; #10;
     sel = 3'b011; #10;
     sel = 3'b100; #10;
     sel = 3'b101; #10;
     sel = 3'b110; #10;
     sel = 3'b111; #10;
     $finish;
end
endmodule
