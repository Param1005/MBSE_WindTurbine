s = tf('s');
Jg =60;
Jw = 276553;
Jr = 5.5e06;
Cl = 25000;
Ch = 36;
Gr = 83.33;
Sl = 1.6e08;
Sh = 2.3e04;
c1 = 0.5176;
c2 = 116;
c3 = 0.4;
c4 = 5;
c5 = 21;
c6=0.0068;
c7 = 0.09;
c8 = 0.035;
num_P = s^4*(Jg*Jw)+s^3*(Jw*Ch+Jg*Cl+Jg*Ch*Gr^2)+s^2*(Cl*Ch+Jg*Sl+Jg*Sh*Gr^2+Jw*Sh)+s*(Cl*Sh+Ch*Sl)+Sh*Sl;
den_P = ((s^4*(Jg*Jw*Jr)+s^3*(Jr*Jg*Cl+Jr*Jw*Ch+Jr*Jg*Ch*Gr^2+Jg*Jw*Cl)+s^2*(Sl*Jg*Jw+Ch*Jr*Cl+Cl*Jg*Ch*Gr^2+Jr*Jw*Sh+Jr*Jg*Sl+Ch*Jw*Cl+Jr*Jg*Sh*Gr^2)+s*(Cl*Sh*Jw+Ch*Sl*Jg*Gr^2+Cl*Sh*Jr+Ch*Sl*Jw+Cl*Sh*Jg*Gr^2)+(Sl*Sh*Jg*Gr^2+Sh*Sl*Jr+Sh*Sl*Jw))*s);
sys_P = num_P/den_P;
num_T = -s^2*(Ch*Cl*Gr)-s*(Gr*(Cl*Sh+Ch*Sl))-(Sh*Sl*Gr);
sys_T = num_T/den_P;
Tgd_max = 14000;
nump = num_P;
denp = den_P;
numt=num_T;
dent = den_P;
