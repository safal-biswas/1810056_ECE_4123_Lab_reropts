%input section

%x=[2 5 3 4];
x = input("Input Signal values: ");

lenx=length(x);
h=zeros(1,length(x));
for i=1:lenx
    h(i)=x(i);
end




%custom code section

lenh=length(h);
N=lenx+lenh-1;
X=zeros(1,N);

count=lenx-1;
for t=1:lenx
    for i=1:lenx
       j=i+count;
       X(t)=X(t)+(x(i)*h(j));
        if(i==t)
            count=count-1;
            break;
        end
    end
end

count=1;
index=2;
for t=lenx+1:N
    for i=index:lenx
       j=i-count;
       X(t)=X(t)+(x(i)*h(j));
    end
    index=index+1;
    count=count+1;
end




%plotting section

subplot(3,1,1);
stem(x);
title('Input Signal: x(n)');

subplot(3,1,2);
stem(xcorr(x,x));
title('Auto Corrrelation using build in function');

subplot(3,1,3);
stem(X);
title('Auto Corrrelation using customized code');
