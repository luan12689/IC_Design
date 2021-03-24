`timescale 1ns/1ps
`include "../design/vd5.v"

module t_vd;

reg [3:0] t_m;
reg [3:0] t_q;

wire [7:0] t_p;
wire [7:0] test;

vd5 vd5_01
{
    .m(t_m),
    .q(t_q),
    .p(t_p)
};

assign test = t_m * t_q;
initial begin
    repeat (20) begin
        t_m =$random();
        t_q =$random();
        #5
        if (t_p == test) begin
            $display($time,":\t%d x %d = %d --> pass",t_m,t_q,t_p);

        end
        else begin
            $display($time,":\t%d x %d != %d --> fail",t_m,t_q,t_p);
        end #100

    end #100 $finish;
end 

initial begin

	$vcdplusfile("t_vd4.vpd");

	$vcdpluson();

end

endmodule