clear all
close all
clc

%% Maps and parameters
t = [0 10 20];
u = [4  4   4];

SOC_map = [0   0.1   0.2   0.3   0.8   0.9   1  ];
VOC_map = [2.0 2.5   3.0   3.2   3.5   3.6   3.7];

Q   = 3600;
R1  = 0.005;
C2  = 21000;
tau = 1000;

SOC_initial = 0.5;
x2_initial  = 0;

%% Run model
t_final = 20;

sim('OutputVoltage_J.slx',t_final)
