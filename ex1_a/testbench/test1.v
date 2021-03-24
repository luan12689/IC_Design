
`timescale 1ns/1ps
`include "/home/albert/IC design/ex1_a/design/ex1_a.v"

module t_ex1_a;
reg t_s2,t_s1,t_s0,t_u,t_v,t_w,t_x,t_y;
wire m;

ex1_a ex1_a_01
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
	#0 // testcase 1
		t_s2 = 0;
		t_s1 = 0;
		t_s0 = 0;
		t_u  = 0;
		t_v  = 0;
  		t_w  = 0;
		t_x  = 0;
		t_y  = 0;
		chk;
	#50 // testcase 2
		t_s2 = 0;
		t_s1 = 0;
		t_s0 = 1;
		t_u  = 0;
		t_v  = 0;
  		t_w  = 0;
		t_x  = 0;
		t_y  = 1;
		chk;
	#50 // testcase 3
		t_s2 = 0;
		t_s1 = 1;
		t_s0 = 0;
		t_u  = 0;
		t_v  = 0;
  		t_w  = 0;
		t_x  = 1;
		t_y  = 0; chk;
	#50 // testcase 4
		t_s2 = 0;
		t_s1 = 1;
		t_s0 = 1;
		t_u  = 0;
		t_v  = 0;
  		t_w  = 0;
		t_x  = 1;
		t_y  = 1; chk;	
	#50 // testcase 5
		t_s2 = 1;
		t_s1 = 0;
		t_s0 = 0;
		t_u  = 0;
		t_v  = 0;
  		t_w  = 1;
		t_x  = 0;
		t_y  = 0; chk;	
	#50 // testcase 6
		t_s2 = 1;
		t_s1 = 0;
		t_s0 = 1;
		t_u  = 0;
		t_v  = 0;
  		t_w  = 1;
		t_x  = 0;
		t_y  = 1; chk;	
	#50 // testcase 7
		t_s2 = 1;
		t_s1 = 1;
		t_s0 = 0;
		t_u  = 0;
		t_v  = 0;
  		t_w  = 1;
		t_x  = 1;
		t_y  = 0; chk;	
	#50 // testcase 8
		t_s2 = 1;
		t_s1 = 1;
		t_s0 = 1;
		t_u  = 0;
		t_v  = 0;
  		t_w  = 1;
		t_x  = 1;
		t_y  = 1; chk;
	#50 // testcase 9
		t_s2 = $random;
		t_s1 = $random;
		t_s0 = $random;
		t_u  = $random;
		t_v  = $random;
  		t_w  = $random;
		t_x  = $random;
		t_y  = $random;	chk;	
	#50 // testcase 10
		t_s2 = $random;
		t_s1 = $random;
		t_s0 = $random;
		t_u  = $random;
		t_v  = $random;
  		t_w  = $random;
		t_x  = $random;
		t_y  = $random;	chk;
	#50 // testcase 11
		t_s2 = $random;
		t_s1 = $random;
		t_s0 = $random;
		t_u  = $random;
		t_v  = $random;
  		t_w  = $random;
		t_x  = $random;
		t_y  = $random;	chk;
	#50 // testcase 12
		t_s2 = $random;
		t_s1 = $random;
		t_s0 = $random;
		t_u  = $random;
		t_v  = $random;
  		t_w  = $random;
		t_x  = $random;
		t_y  = $random;	chk;
	#50 // testcase 13
		t_s2 = $random;
		t_s1 = $random;
		t_s0 = $random;
		t_u  = $random;
		t_v  = $random;
  		t_w  = $random;
		t_x  = $random;
		t_y  = $random;	chk;
	#50 // testcase 14
		t_s2 = $random;
		t_s1 = $random;
		t_s0 = $random;
		t_u  = $random;
		t_v  = $random;
  		t_w  = $random;
		t_x  = $random;
		t_y  = $random;	chk;
	#50 // testcase 15
		t_s2 = $random;
		t_s1 = $random;
		t_s0 = $random;
		t_u  = $random;
		t_v  = $random;
  		t_w  = $random;
		t_x  = $random;
		t_y  = $random;	chk;
	#50 // testcase 16
		t_s2 = $random;
		t_s1 = $random;
		t_s0 = $random;
		t_u  = $random;
		t_v  = $random;
  		t_w  = $random;
		t_x  = $random;
		t_y  = $random;	chk;
	#50 // testcase 17
		t_s2 = $random;
		t_s1 = $random;
		t_s0 = $random;
		t_u  = $random;
		t_v  = $random;
  		t_w  = $random;
		t_x  = $random;
		t_y  = $random;	chk;
	#50 // testcase 18
		t_s2 = $random;
		t_s1 = $random;
		t_s0 = $random;
		t_u  = $random;
		t_v  = $random;
  		t_w  = $random;
		t_x  = $random;
		t_y  = $random;	chk;	
	#50 // testcase 19
		t_s2 = $random;
		t_s1 = $random;
		t_s0 = $random;
		t_u  = $random;
		t_v  = $random;
  		t_w  = $random;
		t_x  = $random;
		t_y  = $random;	chk;
	#50 // testcase 20
		t_s2 = $random;
		t_s1 = $random;
		t_s0 = $random;
		t_u  = $random;
		t_v  = $random;
  		t_w  = $random;
		t_x  = $random;
		t_y  = $random;	chk;	
	#100 $finish;	
end

task chk;
	#5
	case ({t_s2,t_s1,t_s0})
		3'b000: begin
			if (t_m == t_u) $display($time," pass");
			else $display ($time,"FAIL");
		end	
		3'b001: begin
			if (t_m == t_v) $display($time," pass");
			else $display ($time,"FAIL");
		end
		3'b010: begin
			if (t_m == t_w) $display($time," pass");
			else $display ($time,"FAIL");
		end
		3'b011: begin
			if (t_m == t_x) $display($time," pass");
			else $display ($time,"FAIL");
		end
		3'b100: begin
			if (t_m == t_y) $display($time," pass");
			else $display ($time,"FAIL");
		end	
		3'b101: begin
			if (t_m == t_y) $display($time," pass");
			else $display ($time,"FAIL");
		end
		3'b110: begin
			if (t_m == t_y) $display($time," pass");
			else $display ($time,"FAIL");
		end
		3'b111: begin
			if (t_m == t_y) $display($time," pass");
			else $display ($time,"FAIL");
		end		
	endcase
endtask	

initial begin
	$vcdplusfile("ex1_a.vpd");
	$vcdpluson();
end
endmodule

