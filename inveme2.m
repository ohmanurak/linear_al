function inverse=inveme2(matrix)
mat = [matrix eye(length(matrix))];
m = length(matrix);
a = rref(mat);
inverse = a(:,m+1:end)
end