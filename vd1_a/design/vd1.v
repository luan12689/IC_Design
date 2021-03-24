// modiule declaration

// input delclaration

// output declaration

// internal signal

// conbination logic



module vd1 (s2,s1,s0,u,v,w,x,y,m);



input s2,s1,s0,u,v,w,x,y;

output m;

wire a,b,c;



assign a = (s0 == 0) ? u : v;

assign b = (s0 == 0) ? w : x;

assign c = (s1 == 0) ? a : b;

assign m = (s2 == 0) ? c : y;



endmodule




