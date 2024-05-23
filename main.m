% run this script =========================================================
% =========================================================================
clear; clc; format long;

%% init and callbacks -----------------------------------------------------
w1 = 5000;                        % Width of main square
n = 2000;                         % Number of squares to be drawn
i = 0.1;                        % 0 <= i <= 1

nested_squares(w1, n, i);       % Callback function

%% End --------------------------------------------------------------------
disp('Done!');