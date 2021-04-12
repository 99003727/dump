J = 0.001;
b = 0.01;
Ke = 0.05;
Kt=0.04;
R = 2.5;
L=250*10^-3;
Tm=3*R*J/Ke*Kt;
Te=L/3*R;
sys = tf([1/Ke],[(Tm*Te),Tm,1])
subplot(3,3,1)
step(sys)
subplot(3,3,2)
impulse(sys)
subplot(3,3,3)
%S = stepinfo(sys)
[z,p,k]= tf2zp([1/Ke],[(Tm*Te),Tm,1])
zplane(z,p)
S = stepinfo(sys)
