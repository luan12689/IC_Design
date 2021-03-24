`timescale 1ns/1ps

`include "../design/vd1.v"



module t_vd1;

reg t_s2,t_s1,t_s0,t_u,t_v,t_w,t_x,t_y;

wire m;



vd1 vd1_01

(

    .s2(t_s2),

    .s1(t_s1),

    .s0(t_s0),

    .u(t_u),

    .v(t_v),

    .w(t_w),

    .x(t_x),

    .y(t_y),

    .m(t_m)	

);



// monitor

//s2 s1 s0 m

//0  0  0  u

//0  0  1  v

//0  1  0  w

//0  1  1  x

//1  0  0  y

//1  0  1  y

//1  1  0  y

//1  1  1  y



initial begin

    #0 //test case 1

    t_s2 = 0;

    t_s1 = 0;

    t_s0 = 0;

    t_u =  0;

    t_v =  0;

    t_w =  0;

    t_x =  0;

    t_y =  0;

    chk;

    #50 //test case 2

    t_s2 = 0;

    t_s1 = 0;

    t_s0 = 1;

    t_u =  0;

    t_v =  0;

    t_w =  0;

    t_x =  0;

    t_y =  1;

    chk;

    #50 //test case 3

    t_s2 = 0;

    t_s1 = 1;

    t_s0 = 0;

    t_u =  0;

    t_v =  0;

    t_w =  0;

    t_x =  1;

    t_y =  0;

    chk;

    #50 //test case 4

    t_s2 = 0;

    t_s1 = 1;

    t_s0 = 1;

    t_u =  0;

    t_v =  0;

    t_w =  0;

    t_x =  1;

    t_y =  1;

    chk;

    #50 //test case 5

    t_s2 = 1;

    t_s1 = 0;

    t_s0 = 0;

    t_u =  0;

    t_v =  0;

    t_w =  1;

    t_x =  0;

    t_y =  0;

    chk;

    #50 //test case 6

    t_s2 = 1;

    t_s1 = 0;

    t_s0 = 1;

    t_u =  0;

    t_v =  0;

    t_w =  1;

    t_x =  0;

    t_y =  1;

    chk;

    #50 //test case 7

    t_s2 = 1;

    t_s1 = 1;

    t_s0 = 0;

    t_u =  0;

    t_v =  0;

    t_w =  1;

    t_x =  1;

    t_y =  0;

    chk;

    #50 //test case 8

    t_s2 = 1;

    t_s1 = 1;

    t_s0 = 1;

    t_u =  0;

    t_v =  0;

    t_w =  1;

    t_x =  1;

    t_y =  1;

    chk;

    #50 //test case 9

    t_s2 = 0;

    t_s1 = 0;

    t_s0 = 1;

    t_u  =  0;

    t_v  =  0;

    t_w  =  0;

    t_x  =  0;

    t_y  =  0;

    chk;

    #50 //test case 10

    t_s2 = 0;

    t_s1 = 1;

    t_s0 = 0;

    t_u = 0;

    t_v = 0;

    t_w = 1;

    t_x = 0;

    t_y = 0;

    chk;

    #50 //test case 11

    t_s2 = 0;

    t_s1 = 1;

    t_s0 = 1;

    t_u = 1;

    t_v = 1;

    t_w = 0;

    t_x = 0;

    t_y = 0;

    chk;

    #50 //test case 12

    t_s2 = 1;

    t_s1 = 0;

    t_s0 = 0;

    t_u = 0;

    t_v = 0;

    t_w = 1;

    t_x = 0;

    t_y = 1;

    chk;

    #50 //test case 13

    t_s2 = 1;

    t_s1 = 1;

    t_s0 = 1;

    t_u = 0;

    t_v = 0;

    t_w = 1;

    t_x = 0;

    t_y = 1;

    chk;

    #50 //test case 14

    t_s2 = 1;

    t_s1 = 1;

    t_s0 = 0;

    t_u = 1;

    t_v = 1;

    t_w = 0;

    t_x = 0;

    t_y = 0;

    chk;

    #50 //test case 15

    t_s2 = 0;

    t_s1 = 0;

    t_s0 = 0;

    t_u = 1;

    t_v = 1;

    t_w = 0;

    t_x = 0;

    t_y = 0;

    chk;

    #50 //test case 16

    t_s2 = 0;

    t_s1 = 0;

    t_s0 = 0;

    t_u = 0;

    t_v = 0;

    t_w = 1;

    t_x = 1;

    t_y = 0;

    chk;

    #50 //test case 17

    t_s2 = 0;

    t_s1 = 0;

    t_s0 = 1;

    t_u = 0;

    t_v = 0;

    t_w = 0;

    t_x = 1;

    t_y = 0;

    chk;

    #50 //test case 18

    t_s2 = 1;

    t_s1 = 0;

    t_s0 = 1;

    t_u = 0;

    t_v = 1;

    t_w = 0;

    t_x = 1;

    t_y = 0;

    chk;

    #50 //test case 19

    t_s2 = 1;

    t_s1 = 1;

    t_s0 = 1;

    t_u = 0;

    t_v = 1;

    t_w = 1;

    t_x = 0;

    t_y = 0;

    chk;

    #50 //test case 20

    t_s2 = 1;

    t_s1 = 0;

    t_s0 = 1;

    t_u = 0;

    t_v = 1;

    t_w = 1;

    t_x = 1;

    t_y = 1;

    chk;

end

task chk;

#5

	case ({t_s2,t_s1,t_s0})

		3'b000: 

		begin

				if (t_m == t_u) $display($time,"Pass");

				else $display($time,"Fail");

		end

		3'b001:

		begin

				if (t_m == t_v) $display($time,"Pass");

				else $display($time,"Fail");

		end

		3'b010:

		begin

				if (t_m == t_w) $display($time,"Pass");

				else $display($time,"Fail");

		end

		3'b011:

		begin

				if (t_m == t_x) $display($time,"Pass");

				else $display($time,"Fail");

		end

		3'b100:

		begin

				if (t_m == t_y) $display($time,"Pass");

				else $display($time,"Fail");

		end

		3'b101:

		begin

				if (t_m == t_y) $display($time,"Pass");

				else $display($time,"Fail");

		end

		3'b110:

		begin

				if (t_m == t_y) $display($time,"Pass");

				else $display($time,"Fail");

		end

		3'b111:

		begin

				if (t_m == t_y) $display($time,"Pass");

				else $display($time,"Fail");

		end

	      endcase	

	endtask



initial begin

	$vcdplusfile("ex1_a.vpd");

	$vcdpluson();

end

endmodule




