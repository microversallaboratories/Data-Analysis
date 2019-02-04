%This script will return plots for dF/dt data

%Compute means of each trial w/n reps
av_A = mean([A1;A2;A3]);
av_B = mean([B1;B2;B3;B4]);
av_C = mean([C1;C2;C3;C4]);
av_D = mean([D1;D2;D3;D4]);

%Take stdevs of each trial w/n reps
std_A = std([A1;A2;A3]);
std_B = std([B1;B2;B3;B4]);
std_C = std([C1;C2;C3;C4]);
std_D = std([D1;D2;D3;D4]);