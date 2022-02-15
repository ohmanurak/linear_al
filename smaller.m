function [newmatrix] = smaller(matrix,column)
%SMALLER Summary of this function goes here
    a = matrix;
    C = a(2:end,1:column-1);
    D = a(2:end,column+1:end);
    newmatrix = [C D];
end

