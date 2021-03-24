
`timescale 1ns/1ps
`include "../design/ex2.v"

module t_ex2;
parameter DATA_WIDTH = 3;
reg t_s2,t_s1,t_s0;
reg t_Clock;	
reg   [DATA_WIDTH-1:0] t_U;
reg   [DATA_WIDTH-1:0] t_V;
reg   [DATA_WIDTH-1:0] t_W;
reg   [DATA_WIDTH-1:0] t_X;
reg   [DATA_WIDTH-1:0] t_Y;
wire  				[6:0] t_seg7;

ex2 ex2_01
(
	.Clock(t_Clock),	
	.s2(t_s2),
	.s1(t_s1),
	.s0(t_s0),
	.U(t_U),
	.V(t_V),
	.W(t_W),
	.X(t_X),
	.Y(t_Y),
	.seg7(t_seg7)
);

//50MHZ
always begin
	#0 	t_Clock = 0;
	#10	t_Clock = 1;
	#10;
end	

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


task seg7sub;
input [DATA_WIDTH-1:0] aaa;
	case(aaa)
				3'd0: begin
				if ({1'b1,t_seg7 == 8'hC0}) $display("pass at time %d",$time);
				else  $display("	 FAIL at time: %d ",$time);

			end
				3'd1: begin
				if ({1'b1,t_seg7 == 8'hF9}) $display("pass at time %d",$time);
				else  $display("	 FAIL at time: %d ",$time);

			end
				3'd2: begin
				if ({1'b1,t_seg7 == 8'hA4}) $display("pass at time %d",$time);
				else  $display("	 FAIL at time: %d ",$time);

			end
				3'd3: begin
				if ({1'b1,t_seg7 == 8'hB0}) $display("pass at time %d",$time);
				else  $display("	 FAIL at time: %d ",$time);

			end
				3'd4: begin
				if ({1'b1,t_seg7 == 8'h99}) $display("pass at time %d",$time);
				else  $display("	 FAIL at time: %d ",$time);

			end
				3'd5: begin
				if ({1'b1,t_seg7 == 8'h92}) $display("pass at time %d",$time);
				else  $display("	 FAIL at time: %d ",$time);

			end
				3'd6: begin
				if ({1'b1,t_seg7 == 8'h82}) $display("pass at time %d",$time);
				else  $display("	 FAIL at time: %d ",$time);

			end
				3'd7: begin
				if ({1'b1,t_seg7 == 8'hF8}) $display("pass at time %d",$time);
				else  $display("	 FAIL at time: %d ",$time);

			end

		endcase
endtask

task chk;
	@ (posedge t_Clock);
	#5
	case ({t_s2,t_s1,t_s0})
		3'b000: begin
			seg7sub(t_U);
		end	
		3'b001: begin
			seg7sub(t_V);
		end	
		3'b010: begin
			seg7sub(t_W);
		end	
		3'b011: begin
			seg7sub(t_X);
		end
		3'b100: begin
			seg7sub(t_Y);
		end	
		3'b101: begin
			seg7sub(t_Y);
		end
		3'b110: begin
			seg7sub(t_Y);
		end
		3'b111: begin
			seg7sub(t_Y);
		end		
	endcase
endtask	

initial begin
	$vcdplusfile("ex2.vpd");
	$vcdpluson();
end
endmodule

