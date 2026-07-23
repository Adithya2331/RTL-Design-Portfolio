module tb_Timer_Traffic_Controller;
reg clk;
reg clr;
wire [5:0]lights;

Timer_Traffic_Controller dut(.clk(clk),
                       .clr(clr),
                        .lights(lights));
initial begin
  clk = 0;
  clr = 1;
  forever #5 clk = ~clk;
end
initial begin
    $dumpfile("Timer_Traffic_Controller.vcd");
    $dumpvars(0, tb_Timer_Traffic_Controller);
end
  initial begin 
    #15;
    clr = 0;

#500
$finish;
  end
initial begin
  $monitor("$time=%0t clr=%b lights=%b", $time, clr, lights);
end
endmodule

