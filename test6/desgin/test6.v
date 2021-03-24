module test6 (s1,s0,u,v,w,m);

input s1,s0;


input [2:0]  u;

input [2:0]  v;

input [2:0]  w;

output [2:0]  m;



wire [2:0] a;



assign a = (s0 == 0) ? u : v;

assign m = (s1 == 0) ? a : w;



endmodule