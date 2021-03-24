module vd5 (m,q,p);


input [3:0] m;

input [3:0] q;

output [8:0] p;




wire [15:0] temp_p;

wire [15:0] temp_c;



FA FA0 (m[0]&q[0],0,0,        temp_p[0],temp_c[0]);

FA FA1 (m[1]&q[0],0,temp_c[0],temp_p[1],temp_c[1]);

FA FA2 (m[2]&q[0],0,temp_c[1],temp_p[2],temp_c[2]);

FA FA3 (m[3]&q[0],0,temp_c[2],temp_p[3],temp_c[3]);



FA FA4 (m[0]&q[1],temp_p[1],0,        temp_p[4],temp_c[4]);

FA FA5 (m[1]&q[1],temp_p[2],temp_c[4],temp_p[5],temp_c[5]);

FA FA6 (m[2]&q[1],temp_p[3],temp_c[5],temp_p[6],temp_c[6]);

FA FA7 (m[3]&q[1],temp_p[3],temp_c[6],temp_p[7],temp_c[7]);



FA FA8   (m[0]&q[2],temp_p[5],0,         temp_p[8], temp_c[8]);

FA FA9   (m[1]&q[2],temp_p[6],temp_c[8], temp_p[9], temp_c[9]);

FA FA10  (m[2]&q[2],temp_p[7],temp_c[9], temp_p[10],temp_c[10]);

FA FA11  (m[3]&q[2],temp_p[7],temp_c[10],temp_p[11],temp_c[11]);



FA FA12  (m[0]&q[3],temp_p[9],0,           temp_p[12], temp_c[12]);

FA FA13  (m[1]&q[3],temp_p[10],temp_c[12], temp_p[13], temp_c[13]);

FA FA14  (m[2]&q[3],temp_p[11],temp_c[13], temp_p[14], temp_c[14]);

FA FA15  (m[3]&q[3],temp_p[11],temp_c[14], temp_p[15], temp_c[15]);





assign p[0] = temp_p[0];

assign p[1] = temp_p[4];

assign p[2] = temp_p[8];

assign p[3] = temp_p[12];

assign p[4] = temp_p[13];

assign p[5] = temp_p[14];

assign p[6] = temp_p[15];

assign p[7] = temp_c[15];



endmodule








module FA (a,b,ci,s,co);

    input a,b,ci;

    output co;



    assign s = (a^b)^ci;

    assign co = a&b|ci(a^b);

endmodule   