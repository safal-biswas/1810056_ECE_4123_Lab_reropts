x=[1 2 3 4];
h=[4 4 3 2];

subplot(3,1,1);
stem(x);
title('x(t)');

subplot(3,1,2);
stem(h);
title('h(t)');

lenx = length(x);
lenh = length(h);
M=zeros(lenx, lenh);

for i=1:lenx
    for j=1:lenh
        M(i,j)=x(i)*h(j);
    end
end


E=lenx+lenh-1;
H=zeros(1,E);
count=1;

for t=1:E
    for i=count:lenx
        for j=1:i
            if(j==1)
                a=i;
                b=j;
            else
                a=a-1;
                b=b+1;
            end
            H(t)=H(t)+M(a,b);
        end
        break
    end
    count=count+1;
end

count=lenh;
temp=2;

for t=lenx+1:E
    for i=count:E-1
        for j=i:E-1
            if(j==i)
                a=lenh;
                b=lenx-temp;
            else
                a=a-1;
                b=b+1;
            end
            H(t)=H(t)+M(a,b);
        end
        temp=temp-1;
        break;
    end
    count=count+1;
end
   

subplot(3,1,3);
stem(H);
title('x(t)*h(t)');