% Written by Ivan Martinez, Josias Lopez, and Joseph Nwosu
% Oct 30, 2019 - Nov 2, 2019
% Written for MatLab Project
%
% This is a program written to perform a breakeven analysis on the
% different materials and construction methods the user inputs, and determine the expected
% return on investment.
%
% Veriables
%
% list = data table of given information for each material type
% Choice = The material input that the user selected
% surfaceArea = surface area of the walls [ft^2]
% ThicknessFt = Thickness of wall in ft [ft]
% Volume = Volume of wall [ft^3]
% MaterialCost = Total Cost for the material [$]
% LaborCost = Total Cost for the Labor [$]
% ConstructionCost = Total Cost for Miscellaneous Construction Materials
% [$]
% fixed_cost = Total Cost for Construction [$]
%
% Years = Multiple years held in an array to see different times [years]
% Total_Variable_Cost = Total Cost of everything given the inputs of the
% user [$/week]
% Revenue = A year of income [$] 
% Revenue_Years = Total income over user inputs years including Total
% Construction Cost [$ for user input years]
% CostWeek = Total Cost over user input weeks [$/year]
% CostYear = Total Cost over user input years [$ for user input years]
% Profit_Years = Total profits for each year inside variable Years [$ for user input years]
% BEP = The point where incoming money excedes cost monthly (profit point) [months]
% Donation = Money needed to be donated by each donator to reach breakeven
% point in 7 months [$ for user input years] -> $[$ for # months]

clc; clear; close all;

%% Calculation Procedure for Construction (Fixed Cost)

% Information & User selection
list = {'Concrete', 16, 30, 96000, 900, 5, 5; 'Wood', 23, 53, 115000, 800, 12, 11; 'Adobe', 18, 42, 68000, 600, 6, 5};
Choice = menu('Select your material.',list{1},list{2},list{3});

% Converstions 
surfaceArea = 3000; % [ft^2]
ThicknessFt = list{Choice,2}/12; % [in] -> [ft]

% Calculations
Volume = ThicknessFt*surfaceArea; % Multiply thicness by surface area to find the volume [ft^3]
MaterialCost = Volume*list{Choice,3}; % Multiple Area by cost/ft^3 to get total cost [$]
LaborCost = list{Choice,5}*list{Choice,6}*list{Choice,7}; % Calculate for total labor cost [$]
ConstructionCost = list{Choice,4}; % Total Construction Cost [$]
fixed_cost = MaterialCost + ConstructionCost + LaborCost; % Calculation of total cost for construction [$]

%% Breakeven Analysis (Variable Costs and Revenue Details)

energy_cost = input(' Energy Cost[$/week]: ');
labor_cost = input(' Labor Cost[$/week]: ');
maintenanace_cost = input(' Maintenance Cost[$/week]: ');
landfill_cost = input(' Landfill Cost[$/week]: ');
weeks = input(' Number of weeks per year the zoo will operate: ');
years = input(' years since opening day: ');
admission = input(' Price of admission per person [$/person]: ');
visitors = input(' Number of people per week that will visit the zoo: ');
donations = input(' Expected donations per week [$/week]: ');

%% Breakeven Analysis (Process)

Years = [0:years]; % [years]
Total_Variable_Cost = energy_cost + labor_cost + maintenanace_cost + landfill_cost; % [$/week]
Revenue = (admission * weeks * visitors) + (donations * weeks); % [$]
Revenue_Years = (Revenue * Years) - fixed_cost; % [$ for user input years]
CostWeek = Total_Variable_Cost * weeks; % [$/year]
CostYear = CostWeek * Years; % [$ for user input years]

Profit_Years = Revenue_Years - CostYear; % [$ for user input years]
BEP = (fixed_cost / (Revenue - (Total_Variable_Cost * weeks))); % [months]
Donation = Profit_Years(2)* (7/12) * -1; % [$ for user input years] -> $[$ for # months] 

%% Summary of Results 

fprintf('\n Material: %s\n',list{Choice});
fprintf('\tOperating %.0d weeks per year will generate per year:\n',weeks);
fprintf('\t\tRevenue:\t$%.0d\n',Revenue);
fprintf('\t\tCost:\t\t$%.0d\n',Total_Variable_Cost);
fprintf('\tThe breakeven time is %0.2f months\n', BEP*12);
fprintf('\tThe total profit after %1.0f years is $%.3e.\n\n',years,Profit_Years(years+1));
fprintf('\n It will take a one-time donation of $%.2f to breakeven in seven months.',Donation);

%% Figure 1

figure('color','w');
plot(Years,Revenue_Years,'r-',Years,CostYear,'linewidth',3);
hold on
plot(BEP,CostYear(2) * BEP,'o','markerfacecolor','k','markeredgecolor','k')
grid on
legend('Years','CostYears','BEP','location','best')
xlabel('Years')
ylabel('Dollars in millions [$]')
set(gca,'xtick',[0:1:years])
legend('Revenue','Cost','Break even Point','location','best')

%% Figure 2

figure('color','w')
plot(Years,Profit_Years,'b-','linewidth',3) ;
hold on
grid on
plot(BEP,0,'o','markeredgecolor','k','markerfacecolor','k')
xlabel('Years')
ylabel('Dollars in millions [$]')
set(gca,'xtick',[0:1:years])
legend('Profit','Break even Point','location','best')

