module (y,w,x,z,f)
input y,w,x,z;
output f;
reg f;


wire x1,x2,x3,x4,x5,x6;


or  o1(x1,w,x);
and a1(x2,x1,y);
not n1(x3,w);
not n1(x4,x);
or  o2(x5,x3,x4);
and a2(x6,x1,x5);
or  o3(f,x1,x6);

assign f = (y&(w|x)) | ((w|x)&(~w|~x)&z);

always @(x,y,z,w)
    begin
        case (w,x,,y,z):
            3......   : out=1;
            default: out = 0;
        endcase    
    end

endmodule

module mux(Q,A,E)

input [2:0] a;
input [2:0] e;

output [7:0] q;
reg     [7:0] q;


not n1(a0_n,a[0]);
not n2(a1_n,a[1]);
not n3(a2_n,a[2]);
not n4(e1_n,e[1]);
not n5(e2_n,e[2]);

and a1(en,e1_n,e2_n,e[3]);
nand (q[0]_n,a[2]_n,a[1]_n,a[0]_n,en);
nand (q[1]_n,a[2]_n,a[1]_n,a[0]  ,en);
nand (q[2]_n,a[2]_n,a[1]  ,a[0]_n,en);
nand (q[3]_n,a[2]_n,a[1]  ,a[0]  ,en);
nand (q[4]_n,a[2]  ,a[1]_n,a[0]_n,en);
nand (q[5]_n,a[2]_n,a[1]  ,a[0]_n,en);
nand (q[6]_n,a[2]  ,a[1]  ,a[0]_n,en);
nand (q[7]_n,a[2]  ,a[1]  ,a[0]  ,en);

assign en = e[3]&(~e[2])&(~e[1])
assign q[0] = ~((~a[2])&(~a[1])&(~a[0])&en)
assign q[1] = ~((~a[2])&(~a[1])&(a[0])&en)
assign q[2] = ~((~a[2])&(a[1])&(~a[0])&en)
assign q[3] = ~((~a[2])&(~a[1])&(~a[0])&en)
assign q[4] = ~((~a[2])&(~a[1])&(~a[0])&en)
assign q[5] = ~((~a[2])&(~a[1])&(~a[0])&en)
assign q[6] = ~((~a[2])&(~a[1])&(~a[0])&en)
assign q[7] = ~((~a[2])&(~a[1])&(~a[0])&en)\




always @(a,e)
    begin

        if (e[3]&(~e[2])&(~e[1]) = 1)
            begin 
                case(a):
                3'b000: q = 8'b11111110;



        q: = 8'b11111111;
    end


3. 

module (a,b,c,d,x,y,g,h,f)

input a,b,c,d;
input [7:0] x;
input [7:0] y;

output [7:0] f;


wire t1,t2

not n1(a1,a);
or  bb
nand8(.out(f),.in1(x),.in2(y));
not8  (.out11(t1),.in(f));



module nand8(out,in1,in2)

input [7:0] in1;
input [7:0] in2;

output [7:0] out;

    assign out= ~(in1&in2);

endmodule

module not8(out,in)

input [7:0] in;
output [7;0] out11;

assign out = ~in;

endmodule




 