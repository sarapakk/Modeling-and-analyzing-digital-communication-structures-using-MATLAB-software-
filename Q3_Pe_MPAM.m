clear all
clc
gamab=0:10;
m=2;
pe=(2*(m-1)/m)*qfunc(sqrt((6*log2(m)/((m^2)-1))*gamab));
semilogy(gamab,pe,'b')
hold on
m=4;
pe=(2*(m-1)/m)*qfunc(sqrt((6*log2(m)/((m^2)-1))*gamab));
semilogy(gamab,pe,'g')
m=8;
pe=(2*(m-1)/m)*qfunc(sqrt((6*log2(m)/((m^2)-1))*gamab));
semilogy(gamab,pe,'r')
m=16;
pe=(2*(m-1)/m)*qfunc(sqrt((6*log2(m)/((m^2)-1))*gamab));
semilogy(gamab,pe,'k')
xlabel('Yb')
ylabel('Pe')
legend('M=2','M=4','M=8','M=16')
