%input section

%x=[2 1 3 6];
x = input("Input Signal values: ");
n=5;                    %times of repeatation
lenx=length(x);
L=n*lenx;
h=zeros(1,L);
for t=1:L
   if(mod(t,lenx)==0)
       h(t)=x(lenx);
   else
       h(t)=x(mod(t,lenx));
   end
end



%custom code section

N=L-(lenx-1);
X=zeros(1,N);

count=L;
for t=1:N
    temp=count;
    for i=lenx:-1:1
        X(t)=X(t)+(x(i)*h(temp));
        temp=temp-1;
    end
    count=count-1;
end




%plotting section

subplot(2,1,1);
stem(x);
title('First Input Signal: x(t)');

subplot(2,1,2);
stem(X);
title('Periodicity');
