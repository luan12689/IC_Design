`timescale 1ns/1ps
`include "../design/test5.v"

module t_test5;

reg [3:0] t_duty;
reg  t_clk;
wire t_m;

test5 test5_01
(
    .clk(t_clk),
    .duty(t_duty),
    .m(t_m),
);

always begin
    
	#0 	t_clk = 0;
	#10	t_clk = 1;
	#10;
end

initial begin   
    repeat(20) begin    
        t_duty = $random();
        #10
    end
    #100 $finish;
end

initial begin
	$vcdplusfile("t_test5.vpd");
	$vcdpluson();
end
endmodule