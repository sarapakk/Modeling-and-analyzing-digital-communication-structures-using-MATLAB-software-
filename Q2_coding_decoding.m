clear all 
clc
xin=randint(10000,3);
g=[0 1 1 1 0 0;1 0 1 0 1 0;1 1 0 0 0 1];
ht=[1 0 0;0 1 0;0 0 1;0 1 1;1 0 1;1 1 0];
v=xin*g;
ms=zeros(10000,6,10);
err=zeros(10000,6,10);
er=zeros(1,60000,10);
for u=1:1:10
    e(u)=u/100;
    w(u)=round(e(u)*60000);
    er(:,:,u)=randerr(1,60000,w);
    err(:,:,u)=reshape(er(:,:,u),10000,6);
    r(:,:,u)=mod(v+err(:,:,u),2);
    s(:,:,u)=mod(r(:,:,u)*ht,2);
  for k=1:10000
   if s(k,:,u)==[0 1 0]
    ms(k,:,u)=mod(r(k,:,u)+[1 0 0 0 0 0],2);
   else if s(k,:,u)==[0 1 0]
         ms(k,:,u)=mod(r(k,:,u)+[0 1 0 0 0 0],2);
         else if s(k,:,u)==[0 0 1]
         ms(k,:,u)=mod(r(k,:,u)+[0 0 1 0 0 0],2);
         else if s(k,:,u)==[0 1 1]
         ms(k,:,u)=mod(r(k,:,u)+[0 0 0 1 0 0],2);
         else if s(k,:,u)==[1 0 1]
         ms(k,:,u)=mod(r(k,:,u)+[0 0 0 0 1 0],2);
         else if s(k,:,u)==[1 1 0]
         ms(k,:,u)=mod(r(k,:,u)+[0 0 0 0 0 1],2);
         else if s(k,:,u)==[1 1 1]
         ms(k,:,u)=mod(r(k,:,u)+[0 0 1 0 0 1],2);
             else if s(k,:,u)==[0 0 0]
                     ms(k,:,u)=r(k,:,u);
                    
                     
                 end
             end
             end
             end
             end
       end
       end
   end                 
  end
   
 m(:,:,u)=ms(:,4:6,u);
   ber(u)= log10(biterr(m(:,:,u),xin));
  
end
hold on
for p=1:1:10
     stem(e(p),ber(p),'r','*')
     xlabel('E')
     ylabel('Bit error probability')

end

for uu=1:1:10
    e(uu)=uu/100;
    w(uu)=round(e(uu)*60000);
er(:,:,uu)=randerr(1,60000,w);
err(:,:,uu)=reshape(er(:,:,uu),10000,6);
r(:,:,uu)=mod(v+err(:,:,uu),2);
s(:,:,uu)=mod(r(:,:,uu)*ht,2);
  for k=1:10000
   if s(k,:,uu)==[1 1 1]
    ms(k,:,uu)=mod(r(k,:,uu)+[1 1 1 1 1 1],2);
   else if s(k,:,uu)==[0 0 1]
         ms(k,:,uu)=mod(r(k,:,uu)+[1 1 1 1 1 0],2);
         else if s(k,:,uu)==[0 1 0]
         ms(k,:,uu)=mod(r(k,:,uu)+[1 1 1 1 0 1],2);
         else if s(k,:,uu)==[0 1 1]
         ms(k,:,uu)=mod(r(k,:,uu)+[0 1 1 1 1 1],2);
         else if s(k,:,uu)==[1 0 1]
         ms(k,:,uu)=mod(r(k,:,uu)+[1 0 1 1 1 1],2);
         else if s(k,:,uu)==[1 1 0]
         ms(k,:,uu)=mod(r(k,:,uu)+[1 1 0 1 1 1],2);
         else if s(k,:,uu)==[1 0 0]
         ms(k,:,uu)=mod(r(k,:,uu)+[1 1 1 0 1 1 ],2);
             else if s(k,:,uu)==[0 0 0]
                     ms(k,:,uu)=r(k,:,uu);
                    
                     
                 end
             end
             end
             end
             end
       end
       end
   end                           
  end
   
 m(:,:,uu)=ms(:,4:6,uu);
   ber(uu)= log10(biterr(m(:,:,uu),xin));
  
end
hold on
for pp=1:1:10
     stem(e(pp),ber(pp),'g')
     xlabel('E')
     ylabel('Bit error probability')
end


