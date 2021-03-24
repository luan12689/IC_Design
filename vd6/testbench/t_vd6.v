`timescale 1ns/1ps
`include "../design/vd6.v"

module t_vd6;

reg t_Reset,t_clk,t_w;
wire t_q;

vd6 vd6_01
(
    .Reset(t_Reset),
    .clk(t_clk),
    .w(t_w),
    .q(t_q)
);



always
    begin 
        #10 t_clk = 0;
        #10 t_clk = 1;
        #10;
    end

initial begin

        #0 t_Reset = 1; //A
        t_w =0;
        #500 t_Reset = 0;
        #100 t_w = 0;  // B
        #100 t_w = 0;  // C
        #100 t_w = 0;  // C 
        #100 t_w = 0;  // C
        #100 t_w = 1;  // F
        #100 t_w = 1;  // F
        #100 t_w = 0;  // B
        #100 t_w = 1;  // F
        #100 t_w = 0;  // B

        #500 t_Reset =1 ; // A
        #500 t_Reset -0 ;
        #100 t_w = 1; // F
        #100 t_W = 0; // B
        #100 t_w = 1; // F  

        #100 $finish
end


initial begin
	$vcdplusfile("t_vd6.vpd");
	$vcdpluson();
end
endmodule