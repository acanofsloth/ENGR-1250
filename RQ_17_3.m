% Written by Ivan Martinez
% Oct 18, 2019
% Written for MatLab Assignment #2 Question #3
%
% This problem solves for the weight of the rod given
% Specific Gravity, Gravity and Volume
%
% Variables
% V = Volume of the rod (User input) [m^3]
% SG = Specific Gravity of rod [-]
% g = gravity of Callisto [m/s^2]
% pw = density of water [kg/m^3]

clear; close all; clc;

% Input Variables and Constants

V = input('Enter the volume of the rod [cubic meters]: '); % [m^3]
SG = 4.7; % [-]
g = 1.25; % [m/s^2]
pw = 1000; % [kg/m^3]

% Calculations

po = SG * pw; % Solves density of object [kg/m^3]
m = V * po; % Solves for mass of object [kg]
W = m * g; % Solves for Weight of object [N]

% Conversions

W = W * 0.225; % [N] -> [lbf]

% Results Output

fprintf('The weight of the rod is %0.0f pounds-force.\n',W)
