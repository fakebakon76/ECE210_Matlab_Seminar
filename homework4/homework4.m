% homework4.m
% Copywrite (C) 2024 Noam Schuck <noam.schuck@gmail.com>

clc;
clear;
close all;

% Question 1
ip = @(x, y) sum(conj(x) .* y);
ip_norm = @(x) sqrt(ip(x, x));

% Question 4
S = [1   2 + 3j -1 + 7j
     1j   3j  6 + 10j
     2 - 1j 1 - 1j 11 - 4j
     -1    2j  3 + 4j];

% Question 5
U = gram_schmidt(S, ip_norm, ip);
orthoganal = isorthogonal(U(:, 1), U(:, 2), ip) && ...
    isorthogonal(U(:, 2), U(:, 3), ip) && ...
    isorthogonal(U(:, 3), U(:, 1), ip);
