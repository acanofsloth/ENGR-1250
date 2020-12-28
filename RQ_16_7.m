% Written by Ivan Martinez
% Oct 10, 2019
% Written for MatLab Assignment #1 Question #7
%
% This program solves for Weight of a Volume of a rod given
% Volume, Specific Gravity, Gravity, and Density of Water as inputs
%
% Variables 
% V = Volume of the rod [m^3]
% SG = Specific Gravity of the rod [-]
% g = Gravity on Callisto [m/s^2]
% pw = Density of water [kg/m^3]

clear; close all; clc;

% Input Variables and Constants

V = 0.3; % [m^3]
SG = 4.7; % [-]
g = 1.25; % [m/s^2]
pw = 1000; % [kg/m^3]

% Calculations

po = SG*pw; % Density of object [kg/m^3]
m = po*V; % Mass of rod [kg]
W = m*g; % Weight of rod [N]

% Input Conversions

W = W*0.225; % [N] -> [lbf]

