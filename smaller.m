function [newmatrix] = smaller(matrix,column)
    a = matrix;
%     C = a(2:end,1:column-1);
%     D = a(2:end,column+1:end);
%     newmatrix = [C D];
    a(1,:) = [];
    a(:,column)=[];
    newmatrix = a;
end

