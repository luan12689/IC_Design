`timescale 1ns/1ps

`include "../design/vd4.v"



module t_vd4;





reg [3:0] t_a;

reg [3:0] t_b;

reg        t_cin;



wire       t_cout;

wire [3:0] t_s;



vd4 vd4_01

(

    .a(t_a),

    .b(t_b),

    .cin(t_cin),

    .cout(t_cout),

    .s(t_s)

);



wire [4:0] ex_result;



assign ex_result = t_a + t_b + t_cin;


initial begin  
 

    repeat(20) begin   

        t_a = $random();

        t_b = $random();

        t_cin = $random();

        #5

if ({t_cout,t_s} == ex_result) begin

    $display ($time,":\t%h + %h (carry in: %h) = %h,carry out: %h --> pass",t_a,t_b,t_cin,t_s,t_cout);

end

else begin

    $display ($time,":\t%h + %h (carry in: %h) != %h,carry out: %h --> fail",t_a,t_b,t_cin,t_s,t_cout); 

     end #100;


      end #100 $finish;

end


initial begin

	$vcdplusfile("t_vd4.vpd");

	$vcdpluson();

end

endmodule