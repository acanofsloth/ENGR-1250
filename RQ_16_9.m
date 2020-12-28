% Written by Ivan Martinez
% Oct 10, 2019
% Written for MatLab Assignment #1 Question #9
%
% This program solves for Mass of Oxygen Gas inside a container given 
% Volume, Temperature, Pressure, Molecular Weight, and Gas Constant
% as inputs
%
% Variables 
% V = Volume of the container [gal]
% T = Temperature [C]
% P = Pressure in the container [atm]
% MW = Molecular weight of Oxygengas O2 [g/mol]
% R = Gas Constant [(atm L)/(mol K)]

clear; close all; clc;

% Input Variables and Constants

V = 1.25; % [gal]
T = 125; % [C]
P = 2.5; % [atm]
MW = 32; % [g/mol]
R = 0.08206; % [(atm L)/(mol K)]

% Input Conversions

V = 1.25/0.264; % [gal] -> [L]
T = 125+273; % [C] -> [K]

% Calculations

m = (MW*P*V)/(R*T); % Mass of Oxygen gas inside the container [g]

