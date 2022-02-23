function [deter] = dete(matrix)
%DETE Summary of this function goes here
%   Detailed explanation goes here
[m n] = size(matrix);
if m~= n
    error('not square matrix');
end
% if m==1
%     deter = matrix(1);
%     deter
%     return
% end
if m == 2
    deter = matrix(1,1)*matrix(2,2)-matrix(2,1)*matrix(1,2);
    return
else
    answer = 0;
    for j=1:n
        cofactor= ((-1)^(j-1))*matrix(1,j)*dete(smaller(matrix,j));
        answer = answer + cofactor;
    end
    deter = answer;
    return
end

