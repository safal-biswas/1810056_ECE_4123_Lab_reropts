t=-2:0.001:5;

unit = t>=0;
unit1 = t>=1;
unit2 = t>=2;
unit3 = t>=3;
unit4 = t>=4;

x = unit + (2*unit1) - unit2 - (t.*unit2);
subplot(4,1,1);
plot(t,x);
title('First Signal');

y = unit + (t.*unit2) - (t.*unit3) - unit3;
subplot(4,1,2);
plot(t,y);
title('Second Signal');

add=x+y;
subplot(4,1,3);
plot(t,add);
title('Addition of two signal');

sub=x-y;
subplot(4,1,4);
plot(t,sub);
title('Substration of two signal');