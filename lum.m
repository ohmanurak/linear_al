function [l u anser] = lum(matrix,x)
[m,n] = size(matrix);
if m ~= n
    disp('incorrect dimension');
    return;
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
d = l\x;
anser = u\d;%answer of the system

end

