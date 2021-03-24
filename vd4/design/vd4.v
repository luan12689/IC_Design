// modiule declaration
// input delclaration
// output declaration
// internal signal
// conbination logic

module vd4 (a,b,cin,s,cout)
input  [3:0] a;
input  [3:0] b;
input       cin;

output [3:0] s;
output       cout;
 
wire [3:0] c;

FA FA_1 (.a(a[0]), .b(b[0]), .ci(c[0]), .s(s[0]), .co(cin[1]));
FA FA_1 (.a(a[1]), .b(b[1]), .ci(c[1]), .s(s[1]), .co(cin[2]));
FA FA_1 (.a(a[2]), .b(b[2]), .ci(c[2]), .s(s[2]), .co(cin[3]));
FA FA_1 (.a(a[3]), .b(b[3]), .ci(c[3]), .s(s[3]), .co(cout));

endmodule


module FA (a,b,ci,s,co)
    input a,b,ci;
    output co;

    assign s = (a^b)^ci;
    assign co = a&b|ci(a^b);
endmodule    