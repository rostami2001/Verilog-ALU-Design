module full_adder(input a,input b,input cin,output s,output cout);

assign {cout , s} = a + b + cin;

endmodule

module m4to1 ( Aa, Bb , Cc , Dd , S0, S1, Out);

input wire Aa, Bb, Cc, Dd;
input wire S0, S1;
output reg Out;

always @ (Aa or Bb or Cc or Dd or S0, S1)
begin

case (S0 | S1)
2'b00 : Out <= Aa;
2'b01 : Out <= Bb;
2'b10 : Out <= Cc;
2'b11 : Out <= Dd;
endcase

end

endmodule

module mux ( Aa, Bb , Cc , Dd , S0, S1, Out);
input [1:0] Aa , Bb, Cc , Dd , S0, S1;
output [1:0] Out;

m4to1 m0 (Aa[0]==0,Bb[0]==1,Cc[0]==Bb,Dd[0]==~Bb,S0[0],S1[0],Out[0]);
m4to1 m1 (Aa[1]==(Aa&Bb),Bb[1]==(Aa|Bb),Cc[1]==(Aa^Bb),Dd[1]==full_adder.s,S0[1],S1[1],Out[1]);

endmodule

module ALU (A ,B ,Cin ,S, f , Cout);

input A,B,Cin;
input S[3:0];
output f,Cout;

assign f = m1.Out[1];
assign Cout = full_adder.cout;

/*if (S[3]==S[2]==S[1]==S[0]==0)
 f= (A&B);
if ((S[3]==S[2]==S[1]==0)&&(S[0]==1))
 f= (A+B);
if ((S[3]==S[2]==S[0]==0)&&(S[1]==0))
 f= (A^B);
if ((S[3]==S[2]==Cin==0)&&(S[1]==S[0]==1))
 f= A;
if ((S[3]==S[2]==0)&&(S[1]==S[0]==Cin==1))
 f= (A+1);*/

endmodule

