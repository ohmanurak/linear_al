function inverse=inveme(A)
[l u anser detx] =lum(A,[1;1;1;1]);
if detx == 0
    disp('this matrix has no inverse');
    return;
end
[r c] = size(A);    %determine size of input           
m = ones(r,c);      %preallocate r x c cofactor matrix        
a_temp=A;           %create temporary matrix equal to input
for i = 1:r
    for k = 1:c
        a_temp([i],:)=[];   %remove ith row
        a_temp(:,[k])=[];   %remove kth row
        m(i,k) = ((-1)^(i+k))*det(a_temp);  %compute cofactor element
        a_temp=A;   %reset elements of temporary matrix to input elements
    end  
end
cof =m;
adj=cof.';
inverse = (1/detx)*adj
end