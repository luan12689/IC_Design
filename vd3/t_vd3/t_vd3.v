`timescale 1ns/1ps
`include "../design/vd3.v"

module t_vd3;
reg t_ena,t_clk,t_rst_n,t_trigger;

always
    begin 
        #10 t_clk = 0;
        #10 t_clk = 1;
        #10;

vd3 vd3_01
(
    .clk(t_clk),
    .ena(t_ena),
    .rst_n(t_rst_n),
    .trigger(t_trigger)
)
initial begin
    //reset
        t_rst_n = 0;
    #55 
        t_rst_n = 1;
    #55 //test case 1
        t_ena = 0;
    #55 //test case 2
        t_ena = 1;
    #55 //test case 3
        t_ena = 0;
    #55 //test case 4
        t_ena = 1;
    #55 //test case 5
        t_ena = 0;
    #55 //test case 6
        t_ena = 1;
    #55 //test case 7
        t_ena = 0;
    #55 //test case 8
        t_ena = 1;
    #55 //test case 9
        t_ena = 0;
    #55 //test case 10
        t_ena = 1;
        
repeat (10) begin
    #55 t_ena = $random;    
end


end
initial begin
	$vcdplusfile("t_vd2.vpd");
	$vcdpluson();
end
endmodule