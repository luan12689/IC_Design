
`timescale 1ns/1ps
`include "/home/albert/IC design/ex1_b/design/ex1_b.v"

module t_ex1_b;
parameter DATA_WIDTH = 3;
reg t_s2,t_s1,t_s0;
reg   [DATA_WIDTH-1:0] t_U;
reg   [DATA_WIDTH-1:0] t_V;
reg   [DATA_WIDTH-1:0] t_W;
reg   [DATA_WIDTH-1:0] t_X;
reg   [DATA_WIDTH-1:0] t_Y;
wire  [DATA_WIDTH-1:0] t_M;


ex1_b ex1_b_01
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
		t_U  = 0;
		t_V  = 0;
  		t_W  = 0;
		t_X  = 0;
		t_Y  = 0;
		chk;
	#50 // testcase 2
		t_s2 = 0;
		t_s1 = 0;
		t_s0 = 1;
		t_U  = 0;
		t_V  = 0;
  		t_W  = 0;
		t_X  = 0;
		t_Y  = 1;
		chk;
	#50 // testcase 3
		t_s2 = 0;
		t_s1 = 1;
		t_s0 = 0;
		t_U  = 0;
		t_V  = 0;
  		t_W  = 0;
		t_X  = 1;
		t_Y  = 0; chk;
	#50 // testcase 4
		t_s2 = 0;
		t_s1 = 1;
		t_s0 = 1;
		t_U  = 0;
		t_V  = 0;
  		t_W  = 0;
		t_X  = 1;
		t_Y  = 1; chk;	
	#50 // testcase 5
		t_s2 = 1;
		t_s1 = 0;
		t_s0 = 0;
		t_U  = 0;
		t_V  = 0;
  		t_W  = 1;
		t_X  = 0;
		t_Y  = 0; chk;	
	#50 // testcase 6
		t_s2 = 1;
		t_s1 = 0;
		t_s0 = 1;
		t_U  = 0;
		t_V  = 0;
  		t_W  = 1;
		t_X  = 0;
		t_Y  = 1; chk;	
	#50 // testcase 7
		t_s2 = 1;
		t_s1 = 1;
		t_s0 = 0;
		t_U  = 0;
		t_V  = 0;
  		t_W  = 1;
		t_X  = 1;
		t_Y  = 0; chk;	
	#50 // testcase 8
		t_s2 = 1;
		t_s1 = 1;
		t_s0 = 1;
		t_U  = 0;
		t_V  = 0;
  		t_W  = 1;
		t_X  = 1;
		t_Y  = 1; chk;
	#50 // testcase 9
		t_s2 = $random;
		t_s1 = $random;
		t_s0 = $random;
		t_U  = $random;
		t_V  = $random;
  		t_W  = $random;
		t_X  = $random;
		t_Y  = $random;	chk;	
	#50 // testcase 10
		t_s2 = $random;
		t_s1 = $random;
		t_s0 = $random;
		t_U  = $random;
		t_V  = $random;
  		t_W  = $random;
		t_X  = $random;
		t_Y  = $random;	chk;
	#50 // testcase 11
		t_s2 = $random;
		t_s1 = $random;
		t_s0 = $random;
		t_U  = $random;
		t_V  = $random;
  		t_W  = $random;
		t_X  = $random;
		t_Y  = $random;	chk;
	#50 // testcase 12
		t_s2 = $random;
		t_s1 = $random;
		t_s0 = $random;
		t_U  = $random;
		t_V  = $random;
  		t_W  = $random;
		t_X  = $random;
		t_Y  = $random;	chk;
	#50 // testcase 13
		t_s2 = $random;
		t_s1 = $random;
		t_s0 = $random;
		t_U  = $random;
		t_V  = $random;
  		t_W  = $random;
		t_X  = $random;
		t_Y  = $random;	chk;
	#50 // testcase 14
		t_s2 = $random;
		t_s1 = $random;
		t_s0 = $random;
		t_U  = $random;
		t_V  = $random;
  		t_W  = $random;
		t_X  = $random;
		t_Y  = $random;	chk;
	#50 // testcase 15
		t_s2 = $random;
		t_s1 = $random;
		t_s0 = $random;
		t_U  = $random;
		t_V  = $random;
  		t_W  = $random;
		t_X  = $random;
		t_Y  = $random;	chk;
	#50 // testcase 16
		t_s2 = $random;
		t_s1 = $random;
		t_s0 = $random;
		t_U  = $random;
		t_V  = $random;
  		t_W  = $random;
		t_X  = $random;
		t_Y  = $random;	chk;
	#50 // testcase 17
		t_s2 = $random;
		t_s1 = $random;
		t_s0 = $random;
		t_U  = $random;
		t_V  = $random;
  		t_W  = $random;
		t_X  = $random;
		t_Y  = $random;	chk;
	#50 // testcase 18
		t_s2 = $random;
		t_s1 = $random;
		t_s0 = $random;
		t_U  = $random;
		t_V  = $random;
  		t_W  = $random;
		t_X  = $random;
		t_Y  = $random;	chk;	
	#50 // testcase 19
		t_s2 = $random;
		t_s1 = $random;
		t_s0 = $random;
		t_U  = $random;
		t_V  = $random;
  		t_W  = $random;
		t_X  = $random;
		t_Y  = $random;	chk;
	#50 // testcase 20
		t_s2 = $random;
		t_s1 = $random;
		t_s0 = $random;
		t_U  = $random;
		t_V  = $random;
  		t_W  = $random;
		t_X  = $random;
		t_Y  = $random;	chk;	
	#100 $finish;	
end

task chk;
	#5
	case ({t_s2,t_s1,t_s0})
		3'b000: begin
			if (t_M == t_U) $display("t_M: %b = t_U: %b --> pass at time ",t_M,t_U,$time);
			else  $display("	t_M: %b != t_U: %b --> FAIL at time: %d ",t_M,t_U,$time);
		end	
		3'b001: begin
			if (t_M == t_V) $display("t_M: %b = t_V: %b --> pass at time ",t_M,t_V,$time);
			else  $display("	t_M: %b != t_V: %b --> FAIL at time: %d ",t_M,t_V,$time);
		end
		3'b010: begin
			if (t_M == t_W) $display("t_M: %b = t_W: %b --> pass at time ",t_M,t_W,$time);
			else y $display("	t_M: %b != t_W: %b --> FAIL at time: %d ",t_M,t_W,$time);
		end
		3'b011: begin
			if (t_M == t_X) $display("t_M: %b = t_X: %b --> pass at time ",t_M,t_X,$time);
			else  $display("	t_M: %b != t_X: %b --> FAIL at time: %d ",t_M,t_X,$time);
		end
		3'b100: begin
			if (t_M == t_Y) $display("t_M: %b = t_Y: %b --> pass at time ",t_M,t_Y,$time);
			else  $display("	t_M: %b != t_Y: %b --> FAIL at time: %d ",t_M,t_Y,$time);
		end	
		3'b101: begin
			if (t_M == t_Y) $display("t_M: %b = t_Y: %b --> pass at time ",t_M,t_Y,$time);
			else  $display("	t_M: %b != t_Y: %b --> FAIL at time: %d ",t_M,t_Y,$time);
		end
		3'b110: begin
			if (t_M == t_Y) $display("t_M: %b = t_Y: %b --> pass at time ",t_M,t_Y,$time);
			else  $display("	t_M: %b != t_Y: %b --> FAIL at time: %d ",t_M,t_Y,$time);
		end
		3'b111: begin
			if (t_M == t_Y) $display("t_M: %b = t_Y: %b --> pass at time ",t_M,t_Y,$time);
			else  $display("	t_M: %b != t_Y: %b --> FAIL at time: %d ",t_M,t_Y,$time);
		end		
	endcase
endtask	
 
initial begin
	$vcdplusfile("ex1_b.vpd");
	$vcdpluson();
end
endmodule

