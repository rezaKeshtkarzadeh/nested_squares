% run this script =========================================================
% =========================================================================
clear; clc; format long;

%% init and callbacks -----------------------------------------------------
w1 = 10;                        % Width of main square's sides
n = 100;                         % Number of squares to be drawn
i = 0.1;                        % 0 <= i <= 1

nested_squares(w1, n, i);       % Callback function

%% End --------------------------------------------------------------------
disp('Done!');