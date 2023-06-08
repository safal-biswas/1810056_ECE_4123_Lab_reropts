t=-20:1:20;
x=zeros(size(t));
for i=21:31
    x(i)=1;
end
subplot(4,1,1);
stem(t,x);
title('First Signal');

y=zeros(size(t));
for i=26:36
    y(i)=1;
end
subplot(4,1,2);
stem(t,y);
title('Second Signal');

add=x+y;
subplot(4,1,3);
stem(t,add);
title('Addition of two signal');

sub=x-y;
subplot(4,1,4);
stem(t,sub);
title('Substration of two signal');

