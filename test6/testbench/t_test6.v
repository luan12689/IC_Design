`timescale 1ns/1ps

`include "../design/test6.v"







module t_test6;



reg t_s1, t_s0;

reg [2:0] t_u;

reg [2:0] t_v;

reg [2:0] t_w;



wire [2:0] t_m;



test6 test6_01

(

    .s1(t_s1),

    .s0(t_s0),

    .u(t_u),

    .v(t_v),

    .w(t_w),
    .m(t_m)
	



);



initial begin

    repeat (20) begin

        t_s1 = $random;

        t_s0 = $random;

        t_u =  $random;

        t_v =  $random;

        t_w =  $random;

        #50 chk;

         end

        #100 $finish;

end

//   s1 s0 m

//   0  0  u

//   0  1  u

//   1  0  w

//   1  1  u





task chk;

    case ({t_s1,t_s0})

        3'b00: begin

            if(t_m == t_u) $display ("t_m: %b = t_u: %b --> pass at time ",t_m,t_u,$time);
	else  $display("	t_m: %b != t_u: %b --> FAIL at time: %d ",t_m,t_u,$time);


        end

        3'b01: begin

            if(t_m == t_v) $display ("t_m: %b = t_v: %b --> pass at time ",t_m,t_u,$time);
	    else  $display("t_m: %b != t_v: %b --> FAIL at time: %d ",t_m,t_v,$time);

        end

        3'b10: begin

            if(t_m == t_w) $display ("t_m: %b = t_w: %b --> pass at time ",t_m,t_u,$time);
	    else  $display("t_m: %b != t_w: %b --> FAIL at time: %d ",t_m,t_w,$time);	

        end

    endcase

endtask



initial begin

	$vcdplusfile("t_test6.vpd");

	$vcdpluson();

end

endmodule