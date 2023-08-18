syms n;
f = (1/2)^n;
F = ztrans(f);

disp('x[n] = ');
disp(f);

disp('X[z] = ');
disp(F);

fs = 1000;
ts = 1/fs;

num = [1 0];
den = [1 -0.5];

H=tf(num,den);
zplane(num,den);

