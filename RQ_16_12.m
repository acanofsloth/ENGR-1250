% Written by Ivan Martinez
% Oct 10, 2019
% Written for MatLab Assignment #1 Question #12
%
% This program solves for the density of tribromoethylene inside a 
% cylindrical tank given
% Height, Surface Pressure, Total Pressure and gravity as inputs
%
% Variables
% H = Height of a cylindrical tank [ft]
% Psurface = Surface Pressure [atm]
% Ptotal = Total Pressure [atm]
% g = Gravity on Earth [m/s^2]

clear; close all; clc;

% Input Variables and Constants

H = 25; % [ft]
Psurface = 3; % [atm]
Ptotal = 5; % [atm]
g = 9.8; % [m/s^2]

% Input Conversions

H = 25/3.28; % [ft] -> [m]
Psurface = 3*101325; % [atm] -> [Pa]
Ptotal = 5*101325; % [atm] -> [Pa]

% Calculations

Density = (Ptotal-Psurface)/(g*H); % Density of tribromoethylene [kg/m^3]
