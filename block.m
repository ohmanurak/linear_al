function [matrix,x] = block(A,b)
[m n] = size(A);
if m&&n==1
    matrix = A;
    x = inveme(A)*b
end
if m<n
    error('inconsistent matrix')
end
aug = [A b];
for i=1:m-1
    A = aug(1:i,1:i);
    B = aug(1:i,i+1:end);
    C = aug(i+1:end,1:i);
    [mc nc] = size(C);
    D = aug(i+1:end,i+1:end);
    if length(A) ==1
        A_inv = 1/A;
    else
        A_inv = inveme(A);
    end
%     A_inv = inveme(A);
    mul = C*A_inv*B;
    form = D-mul;
    upper = [A B];
    lower = [zeros(mc,nc) form];
    aug = [upper;lower];
end

AA = aug(1:m,1:n);
bb = aug(1:end,end);
matrix = aug;
disp(matrix)
% x = inveme(AA)*bb;
x = AA\bb;
for i = 1:length(x)
    aa = sprintf('x%d = %d\n',i,x(i,:));
    fprintf(aa);
end
end

