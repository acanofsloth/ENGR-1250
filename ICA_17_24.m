% Written by Ivan Martinez
% Oct 24, 2019
% Written for MatLab Assignment #3 Question #24
%
% The following will graph a theoritical model of the decay of a
% radioactive isotope given time, k, and initial concentration.
%
% Variables
% t = time that we are measuring (hr)
% k = time of the decay of an isotope [hr]
% C_0 = initial concentration of isotope [g]

clc; clear; close all;

% Variables

t = [0:5];
k = 1.48;
C_0 = 10;

% Solution

C = C_0*exp(-t/k);

% Graphing

plot(t,C)
grid on
set(gca,'xtick',[0:1:5],'ytick',[0:1:10])
axis([0 5 0 10])
xlabel('Time (t) [hr]')
ylabel('Concentration (A) [#]')
title('Consentration (A) [#] vs. Time (t) [hr]')
