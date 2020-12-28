% Written by Ivan Martinez
% Oct 24, 2019
% Written for MatLab Assignment #3 Question #16
%
% This plots the height of how far the liquid reached compared to the
% radius of the tube given Radius and Height.
%
% Variables
% Raddius = Radius of tube (r) [cm]
% Height = Height of the distance the liquid reached (H) [cm]

clc; clear; close all;

% Variables

Radius = [0.01,0.05,0.10,0.20,0.40,0.50];
Height = [14.0,3.0,1.5,0.8,0.4,0.2];

% Graphing

plot(Radius,Height,'.b','markersize',15);
grid on
axis([0 0.50 0 14])
set(gca,'xtick',[0:0.05:0.5],'ytick',[0:1:14])
xlabel('Radius (r) [cm]')
ylabel('Height (H) [cm]')
title('Height (H) [cm] vs. Radius (r) [cm]')
