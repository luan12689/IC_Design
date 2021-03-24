`timescale 1ns/1ps
`include "../design/vd2"

reg t_s2,t_s1,t_s0;
parameter DATA-WIDTH=3;
reg  [DATA-WIDTH-1:0] = U;
reg  [DATA-WIDTH-1:0] = V;
reg  [DATA-WIDTH-1:0] = W;
reg  [DATA-WIDTH-1:0] = X;
reg  [DATA-WIDTH-1:0] = Y;
wire [DATA-WIDTH-1:0] = M;

vd2 vd2_01
(

    .s2(t_s2),

    .s1(t_s1),

    .s0(t_s0),

    .U(t_U),

    .V(t_V),

    .W(t_W),

    .X(t_X),

    .Y(t_Y),

    .M(t_M)	

);
initial begin

    #0 //test case 1

    t_s2 = 0;

    t_s1 = 0;

    t_s0 = 0;

    t_U =  0;

    t_V =  0;

    t_W =  0;

    t_X =  0;

    t_Y =  0;

    chk;

    #50 //test case 2

    t_s2 = 0;

    t_s1 = 0;

    t_s0 = 1;

    t_U =  0;

    t_V =  0;

    t_W =  0;

    t_X =  0;

    t_Y =  1;

    chk;

    #50 //test case 3

    t_s2 = 0;

    t_s1 = 1;

    t_s0 = 0;

    t_U =  0;

    t_V =  0;

    t_W =  0;

    t_X =  1;

    t_Y =  0;

    chk;

    #50 //test case 4

    t_s2 = 0;

    t_s1 = 1;

    t_s0 = 1;

    t_U =  0;

    t_V =  0;

    t_W =  0;

    t_X =  1;

    t_Y =  1;

    chk;

    #50 //test case 5

    t_s2 = 1;

    t_s1 = 0;

    t_s0 = 0;

    t_U =  0;

    t_V =  0;

    t_W =  1;

    t_X =  0;

    t_Y =  0;

    chk;

    #50 //test case 6

    t_s2 = 1;

    t_s1 = 0;

    t_s0 = 1;

    t_U =  0;

    t_V =  0;

    t_W =  1;

    t_X =  0;

    t_Y =  1;

    chk;

    #50 //test case 7

    t_s2 = 1;

    t_s1 = 1;

    t_s0 = 0;

    t_U =  0;

    t_V =  0;

    t_W =  1;

    t_X =  1;

    t_Y =  0;

    chk;

    #50 //test case 8

    t_s2 = 1;

    t_s1 = 1;

    t_s0 = 1;

    t_U =  0;

    t_V =  0;

    t_W =  1;

    t_X =  1;

    t_Y =  1;

    chk;

    #50 //test case 9

    t_s2 = 0;

    t_s1 = 0;

    t_s0 = 1;

    t_U  =  0;

    t_V  =  0;

    t_W  =  0;

    t_X  =  0;

    t_Y  =  0;

    chk;

    #50 //test case 10

    t_s2 = 0;

    t_s1 = 1;

    t_s0 = 0;

    t_U = 0;

    t_V = 0;

    t_W = 1;

    t_X = 0;

    t_Y = 0;

    chk;

    #50 //test case 11

    t_s2 = 0;

    t_s1 = 1;

    t_s0 = 1;

    t_U = 1;

    t_V = 1;

    t_W = 0;

    t_X = 0;

    t_Y = 0;

    chk;

    #50 //test case 12

    t_s2 = 1;

    t_s1 = 0;

    t_s0 = 0;

    t_U = 0;

    t_V = 0;

    t_W = 1;

    t_X = 0;

    t_Y = 1;

    chk;

    #50 //test case 13

    t_s2 = 1;

    t_s1 = 1;

    t_s0 = 1;

    t_U = 0;

    t_V = 0;

    t_W = 1;

    t_X = 0;

    t_Y = 1;

    chk;

    #50 //test case 14

    t_s2 = 1;

    t_s1 = 1;

    t_s0 = 0;

    t_U = 1;

    t_V = 1;

    t_W = 0;

    t_X = 0;

    t_Y = 0;

    chk;

    #50 //test case 15

    t_s2 = 0;

    t_s1 = 0;

    t_s0 = 0;

    t_U = 1;

    t_V = 1;

    t_W = 0;

    t_X = 0;

    t_Y = 0;

    chk;

    #50 //test case 16

    t_s2 = 0;

    t_s1 = 0;

    t_s0 = 0;

    t_U = 0;

    t_V = 0;

    t_W = 1;

    t_X = 1;

    t_Y = 0;

    chk;

    #50 //test case 17

    t_s2 = 0;

    t_s1 = 0;

    t_s0 = 1;

    t_U = 0;

    t_V = 0;

    t_W = 0;

    t_X = 1;

    t_Y = 0;

    chk;

    #50 //test case 18

    t_s2 = 1;

    t_s1 = 0;

    t_s0 = 1;

    t_U = 0;

    t_V = 1;

    t_W = 0;

    t_X = 1;

    t_Y = 0;

    chk;

    #50 //test case 19

    t_s2 = 1;

    t_s1 = 1;

    t_s0 = 1;

    t_U = 0;

    t_V = 1;

    t_W = 1;

    t_X = 0;

    t_Y = 0;

    chk;

    #50 //test case 20

    t_s2 = 1;

    t_s1 = 0;

    t_s0 = 1;

    t_U = 0;

    t_V = 1;

    t_W = 1;

    t_X = 1;

    t_Y = 1;

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

	$vcdplusfile("t_vd1.vpd");

	$vcdpluson();

end

endmodule


