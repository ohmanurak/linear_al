clc,clear
% %%LU Factorization
% X = randi([1 100],5,5);
% b = randi([1 100],5,1);
% [X b]
% [l u anser] = lum(X,b);
% % Check if l and u are correct
% abc = round(l*u)
% abc==X
% % Check if answers of Xs are correct
% Xs = round(X*anser)
% Xs == b


%%Block Elimination
X = randi([1 100],5,5);
b = randi([1 100],5,1);
[X b]
[matrix xxx] = block(X,b);
% Check if the answers are correct
 round(X*xxx)==b




