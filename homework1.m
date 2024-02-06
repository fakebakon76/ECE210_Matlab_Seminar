% homework1.m
% Copywrite (C) 2024 Noam Schuck <noam.schuck@gmail.com>
% ECE210 Matlab Seminar Homework 1

% Question 1
u = [11 13 17];
v = [-1; -1; -1];
A = [-u; 2 * u; 7 * u];
B = [A' v];

% Question 2
c = exp(pi * 1j * 4);
d = sqrt(1j);
l = floor((8.418 * 10^6)^(1 / 2.1));
k = floor(100 * log(2)) + ceil(exp(7.5858));

% Question 3

A = [1 -11 -3
     1 1   0
     2 5   1
    ];

b = [-37; -1; 10];

x = A\b; %mldivide(A, b);
disp(x);
