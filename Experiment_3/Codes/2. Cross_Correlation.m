%input section

%x=[2 5 -3 4];
x = input("Input First Signal values x(n): ");
%h=[3 -1 3 2];
h = input("Input Second Signal values h(n): ");




%custom code section

lenx=length(x);
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

subplot(4,1,1);
stem(x);
title('First Input Signal: x(t)');

subplot(4,1,2);
stem(h);
title('Second Input Signal: h(t)');

subplot(4,1,3);
stem(xcorr(x,h));
title('Cross Corrrelation using build in function');

subplot(4,1,4);
stem(X);
title('Cross Corrrelation using customized code');
