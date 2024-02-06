%% transmitter
%% Juan Tellez Gonzalez
%% Clear everything

clear; close all; clc;

%% Set parameters
M= 8;
T = 2.0E-7;
OverSampling = 20;
freq = 100.0E6;
Amplitude = 10.0;

%% Create timebase

fs = OverSampling*max(freq);
N = 2^M;

%t = 0:1/fs:(N - 1)/fs;
t = 0:1/fs:T - 1/fs;

%%Create signal
sig = Amplitude*cos(2.0*pi*freq*t);

%%Plot signal
plot(t, sig)
xlabel("time(seconds)")
ylabel("amplitude")
title("carrier time domain")
axis([0 T -15 15])





