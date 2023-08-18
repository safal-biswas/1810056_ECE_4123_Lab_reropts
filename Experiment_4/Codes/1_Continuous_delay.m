t=0:1:5;

step0 = t>=0;
step1 = t>=1;
step2 = t>=2;
step3 = t>=3;

x = 4*step0 - 2*step1 + step2 - 3*step3;

d= 5;

h = zeros(1,length(x)+d);

for i=1:length(x)
    h(i)=x(i);
end


Y = xcorr(x,h);


%plotting section

subplot(3,1,1);
plot(x);
title('Input Signal: x(n)');

subplot(3,1,2);
plot(h);
title('Delayed Input Signal');

subplot(3,1,3);
plot(Y);
title('Auto Corrrelated Signal');