%% Transmitter
%% Juan Tellez Gonzalez
%% Clear everything

clear; close all; clc

%% Set parameter
OverSampling=20;
freq = 1010E3;
amplitude = 10.0;
T = 0.001;
bb_freq = 5000.0;
bb_amp = 10.0;
ka = 1;

%% Create Timebase
fs = OverSampling*max(freq);
t = 0:1/fs:T - 1/fs;
N = length(t);

%% Create carrier 
sig = cos(2.0*pi*freq*t);

%% Create baseband signal
bb_sig = bb_amp*cos(2.0*pi*bb_freq*t);

%% Amplitude Modulation
modulated = (amplitude + bb_sig).*sig;

%%Plot Results
figure, subplot(2,1,1)
plot(t, bb_sig)
xlabel("time(seconds)")
ylabel("amplitude")
title("baseband signal time domain")

subplot(2,1,2)
plot(t, modulated)
title("amplitude modulation time domain")
ylabel("amplitude")
xlabel("time(seconds)")








