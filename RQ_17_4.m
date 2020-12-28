% Written by Ivan Martinez
% Oct 18, 2019
% Written for MatLab Assignment #2 Question #4
%
% This problem solves for the distance Microjoule will travel given
% Microjoule Performance, Specific Gravity, and Mass
%
% Variables
% MP = Microjoule Performance [mi/hr]
% SG = Specific Gravity of Ethanol [-]
% pw = Density of water [g/cm^3]
% m = Mass of Ethanol [g]

clear; close all; clc;

% Input Variables and Constants

m = input('Enter mass of ethanol [grams]: '); % [g]
MP = 10705; % [mi/hr]
SG = 0.789; % [-]
pw = 1; % [g/cm^3]

% Calculations

po = SG * pw; % Solves for density of object [g/cm^3]
V = m/po; % Solves for Volume [cm^3]

% Conversions

V = V*0.264/1000; % [cm^3] -> [gal]
MP = 10705/0.621; % [mi] -> [km]

% Final Calculation given conversions

D = V*MP; % Solves for total distance [km]

% Results Output

fprintf('The distance the Microjoule traveled is %0.0f kilometers.\n',D)
