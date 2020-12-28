% Written by Ivan Martinez
% Oct 24, 2019
% Written for MatLab Assignment #3 Question #14
%
% This plots the amount of distance it takes to react and brake at 
% any speed (time) given the Reaction distance and Braking distance.
%
% Variables
% speed = speed of car (v) [mph]
% reaction = distance it takes to react (d) [m]
% braking = distance it takes to brake (d) [m]
% total = total distance it takes to react and brake (d) [m]

clc; clear; close all;

% Variables

speed = [20,30,40,50,60,70];
reaction = [6,9,12,15,18,21];
braking = [6,14,24,38,55,75];
totald = reaction+braking;

% Graphing

plot(speed,braking,'>r',speed,reaction,'ob','markersize',5)
hold on
plot(speed,totald,'.m','markersize',15);
grid on
xlabel('Speed (v) [mph]')
ylabel('Distance (d) [m]')
title('Distance (d) [m] vs. Speed (v) [mph]')
axis([20 70 0 100])
set(gca,'xtick',[20:10:70],'ytick',[0:10:100])
legend('Braking distance(d_b)','Reaction distance (d_r)', 'Total (d_b+ d_r)','location','northwest')
