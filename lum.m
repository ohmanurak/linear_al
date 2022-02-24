function [l u anser] = lum(matrix,x)
[m,n] = size(matrix);
if m ~= n
    error('incorrect dimension: not a square matrix');
end
L = zeros(m,m);
U = zeros(m,m);
U(1,:) = matrix(1,:);
for i=1:m
    for j =i+1:m
        L(j,i)=matrix(j,i)/matrix(i,i);
        U(j,:) = matrix(j,:)-matrix(j,i)*matrix(i,:)/matrix(i,i);
        matrix(j,:) = matrix(j,:)-matrix(j,i)*matrix(i,:)/matrix(i,i) ;
        
    end
end

for i=1:m
L(i,i)=1;
end

u=U;%upper triangle
l=L;%lower triangle
% inveme(l)
d= inveme(l)*x;% d = l\x;


% disp(u\d)
if isnan(inveme(u)*d)|isinf(inveme(u)*d) ~= zeros(size(inveme(u)*d))
    disp(u*l);
    error('inconsistent matrix')
end
anser = inveme(u)*d;%answer of the system
for i = 1:length(anser)
    aa = sprintf('x%d = %d\n',i,anser(i,:));
    fprintf(aa);
end
end

