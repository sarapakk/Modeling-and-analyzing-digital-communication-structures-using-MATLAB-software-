clear all
clc
xin=randn(1,10000);
xout=zeros(1,10000);
t=zeros(1,10000);
delta=0.9957;
n=4;
for i=1:10000
if xin(1,i)>0 && xin(1,i)<= 1 
    xout(1,i)=0.5;
    t(1,i)=1;
else if xin(1,i)<=0 && xin(1,i)> -1 
        xout(1,i)= -0.5;
        t(1,i)=2;
else if xin(1,i)>1
        xout(1,i)=1.5;
        t(1,i)=3;
else if xin(1,i)<=-1
        xout(1,i)=-1.5;
        t(1,i)=3;
    end
    end
    end
end
end
length=sum(t)/10000
