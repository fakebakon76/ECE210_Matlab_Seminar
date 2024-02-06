% homework3.m
% Copywrite (C) 2024 Noam Schuck <noam.schuck@gmail.com>
% ECE210 Matlab Seminar Homework 3

clc;
clear;
close all;


%% Setup

ITERATIONS = 5;

CREWMATES = 6;
ROUNDS = 12;

CREWMATE_SIDES = 4;
IMPOSTER_ROLLS = 2;
IMPOSTER_SIDES = 2;

rng(0x73757300); % Calls matlabs random num generator seeds
%rng("shuffle");

%% Question 1

crewmates = randi(CREWMATE_SIDES, CREWMATES, ITERATIONS);
sus = sum(randi(IMPOSTER_SIDES, IMPOSTER_ROLLS, ITERATIONS));

targets = randi(CREWMATES, ROUNDS, ITERATIONS);

%% Question 2

% kills = false(ROUNDS, ITERATIONS);
iterations = (1:ITERATIONS) + zeros(1, ROUNDS)';
targetIndex = sub2ind([CREWMATES, ITERATIONS], targets, iterations);

skills = crewmates(targetIndex);
kills = sus>skills;

%% Question 3

% getting the player number of all the deaths
died = targets.*kills;

[row, col] = ind2sub([1 CREWMATES], died);

people = zeros([CREWMATES+1 ITERATIONS]);
col = col+1;

coord = sub2ind([CREWMATES+1, ITERATIONS], col, iterations);
people(coord) = 1; %putting one in all the indices with dead people

[down, across] = size(people);

survivors = ~people(2:down, :);


%% Question 4
wins = (sum(survivors)-1) > 0;
loss_rate = 1-nnz(wins)/ITERATIONS;

crewmates
sus
targets
kills
survivors
