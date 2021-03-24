// modiule declaration
// input delclaration
// output declaration
// internal signal
// conbination logic

module vd2 (s2,s1,s0,U,V,W,X,Y,M);
parameter DATA-WIDTH=3;
input s2,s1,s0
input  [DATA-WIDTH-1:0] = U;
input  [DATA-WIDTH-1:0] = V;
input  [DATA-WIDTH-1:0] = W;
input  [DATA-WIDTH-1:0] = X;
input  [DATA-WIDTH-1:0] = Y;
output [DATA-WIDTH-1:0] = M;

wire [DATA-WIDTH-1:0] = A;
wire [DATA-WIDTH-1:0] = B;
wire [DATA-WIDTH-1:0] = C;

assign A = (s0 == 0) ? U : V;
assign B = (s0 == 0) ? W : X;
assign C = (s1 == 0) ? A : B;
assign M = (s2 == 0) ? C : Y;

endmodule


