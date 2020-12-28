% Written by Ivan Martinez
% Oct 18, 2019
% Written for MatLab Assignment #2 Question #11
%
% This is program to help consumers measure the efficiency of their stove
% using water given Initial Temperature, Time, Brand name of stove
% and Input Power
%
% Variables
% InitialT = Initial Temperature of water (User Input) [F]
% FinalT = Final Temperature of water [C]
% Time = Time to boil water [min]
% Name = Name of stove brand 
% InPower = Input Power of stove [W]
% V = Volume of water
% Cp = Specific Heat of water [J/g*C]
% pw = Density of water [g/cm^3]

clear; close all; clc;

% Starting Output

fprintf('Household Appliance Efficiancy Calculator\n\n')

% Input Variables and Constants

InitialT = input('Type the initial room temperature of the water [deg F]: '); % [F]
FinalT = 100; % [C]
Time = input('Type the time it takes the water to boil [min]: '); % [min]
Name = input('Type the brand name and model of your stove: ','s'); 
InPower = input('Type the power of the stove-top burner [W]: '); % [W]
V = 1; % [gal]
Cp = 4.186; % [J/g*C]
pw = 1; % [g/cm^3]

% Conversion

V = (V/0.264)*1000; % [gal] -> [cm^3]
InitialT = (InitialT-32)/1.8; % [F] -> [C]
Time = Time*60; % [min] -> [s]

% Calculations

ThetaT = FinalT-InitialT; % Solves for theta Temperature
m = pw * V; % Solves for mass of water [g]
Q = m*Cp*ThetaT; % Solves for Thermal Energy [J]
OutPower = Q/Time; % Solves for power [W]
Efficiency = OutPower/InPower*100; % Solves for Efficency [%]

% Output Results

fprintf('\nEnergy required:\t\t%0.0f J\n',Q);
fprintf('Power used by burner:\t%0.0f W',OutPower);
fprintf('\nBurner efficiency for a %s stove: %0.1f%%\n',Name,Efficiency);
