clc,clear
X = randi([1 10],5,5);
b = randi([1 10],5,1);
[X b]
[matrix xxx]=block(X,b);
X*xxx



