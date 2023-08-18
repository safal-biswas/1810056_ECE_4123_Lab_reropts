f1 = [4, 5, 3];
len=length(f1);

X=0;
z=sym('z');
for i=0:len-1
    X=X+f1(i+1).*z^(-i);
end
disp(X);