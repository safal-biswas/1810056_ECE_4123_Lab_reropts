syms z n
f1 = [1 2 3 8 5];
index = input('Enter index: ');
len=length(f1);

X=0;
z=sym('z');

for i=0:index-1
    X=X+f1(i+1).*z^(i);
end
for i=index:len-1
    X=X+f1(i+1).*z^(-i);
end
disp(X);