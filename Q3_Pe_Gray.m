clear all
clc
gamab=0:10;
m=2;
pe=(2*(m-1)/m)*qfunc(sqrt((6*log2(m)/((m^2)-1))*gamab));
pb=pe/log2(m);
semilogy(gamab,pb,'b-*')
hold on
m=4;
pe=(2*(m-1)/m)*qfunc(sqrt((6*log2(m)/((m^2)-1))*gamab));
pb=pe/log2(m);
semilogy(gamab,pb,'g-*')
m=8;
pe=(2*(m-1)/m)*qfunc(sqrt((6*log2(m)/((m^2)-1))*gamab));
pb=pe/log2(m);
semilogy(gamab,pb,'r-*')
m=16;
pe=(2*(m-1)/m)*qfunc(sqrt((6*log2(m)/((m^2)-1))*gamab));
pb=pe/log2(m);
semilogy(gamab,pb,'k-*')
xlabel('Yb')
ylabel('Pe')
legend('M=2','M=4','M=8','M=16')