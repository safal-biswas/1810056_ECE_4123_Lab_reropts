x = [2 3 5 6];
d = 6;              %delay
h = zeros(1,d);

disp(length(x));

for i=1:length(x)
    h(i)=x(i);
end


Y = xcorr(x,h);


%plotting section

subplot(3,1,1);
stem(x);
title('Input Signal: x(n)');

subplot(3,1,2);
stem(h);
title('Delayed Input Signal');

subplot(3,1,3);
stem(X);
title('Auto Corrrelated Signal');