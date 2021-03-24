module fir (a,b,c,y,clk)
    input [7:0] a,b,c;
    input clk;
    output [15:0] y;

    always @(a or b or c)
    {
        y = (a*2)+((4*b)+(6*c)); 
    }


);
    
endmodule


module fir_output_d (
    ports
);
    
endmodule



module reg8 (in,clk,reset,out)
(
    input  [7:0] in;
    input        clk;
    output [7:0]     out;

    always @(posedge clk)
    begin
        if (reset)
            out = 0;
        else 
            out = in;     
    end

);
    
endmodule

module reg16 (in,clk,reset,out)
(
    input  [15:0] in;
    input         clk;
    output [15:0]     out;

    always @(posedge clk)
    begin
        if (reset)
            out = 0;
        else 
            out = in;     
    end

);
endmodule

module pe (in_x,in_y,clk,coeff,reset,out_y,out_x)

    input [7:0] in_x,in_y;
    input [7:0] coeff;
    input clk,reset;

    output out_y,out_x;
    wire [15:0] mult_out,add_out;

    re8 r1(add_out,clk,reset,out_8);
    re16 r2(in_x,clk,reset,out_x);

    assign mult_out  = coeff * in_x ;
    assign add_out   = mult_out + in_y;
);
    
endmodule

module main (input_x,clk,reset,output_y)
    input [7:0] input_x;
    input clk,reset;

    output [15:0] output_y;

    wire [7:0] pe0_x,pe1_x,pe2_x,pe3_x;
    wire [7:0] pe0_y,pe1_y,pe2_y,pe3_y;

    wire [7:0] h0 = 8'h01;
    wire [7:0] h1 = 8'h01;
    wire [7:0] h2 = 8'h01;
    wire [7:0] h3 = 8'h01;

    wire [15:0] pe4_y 16'h0000;
    reg [15:0] output_y;

    pe pe0(input_x,pe1_y,clk,h0,reset,output_y,pe0_x);
    pe pe1(pe0_x,pe2_y,clk,h1,reset,pe1_y,pe1_x);
    pe pe2(pe1_x,pe3_y,clk,h2,reset,pe2_y,pe2_x);
    pe pe3(pe2_x,pe4_y,clk,h3,reset,pe3_y,pe3_x);
);
    
endmodule