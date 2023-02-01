clear all
clc
for i=1:11
gamab=10.^((i-1)./10);
pe1(1,i)=qfunc(sqrt(gamab));
pe2(1,i)=qfunc(sqrt(2*gamab));
end
x=[0:10];
semilogy(x,pe1,'r',x,pe2,'b')
legend('ook','bpsk')