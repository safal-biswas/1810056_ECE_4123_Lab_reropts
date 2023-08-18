t=-10:1:10;
unit=t>=0;
subplot(3,1,1);
stem(t, unit);
title('Unit Step Signal');

impulse=t==0;
subplot(3,1,2);
stem(t, impulse);
title('Unit Impulse Signal');

ramp=t.*unit;
subplot(3,1,3);
stem(t, unit3);
title('Ramp Signal');


