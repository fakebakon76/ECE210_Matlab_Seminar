% homework2.m
% Copywrite (C) 2024 Noam Schuck <noam.schuck@gmail.com>
% ECE210 Matlab Seminar Homework 2

% Setting Up
clc;
clear;
close all;

% Question 1
u = -4:2:4;

v = 0:pi/4:pi;

% Question 2
f = prod(1:10);

% Question 3
A = zeros(2, 4);
A(1) = 1;
A(6) = 1;

b1 = [0; 2; 4; 6];
b2 = [1 9 2 10];
B  = b2 + b1;

% Question 4
t = linspace(-pi, pi, 1000);
nums = 0:50;
a = 2.*nums+1;
M = sin(a'.*t)./a';
s = sum(M);
plot(t, s);

