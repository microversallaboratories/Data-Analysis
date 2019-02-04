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

%Run calculation for slope
%for p = [A1,A2,A3,B1,B2,B3,B4,C1,C2,C3,C4,D1,D2,D3,D4]
 % for i = 2:length(t) %for statement for A
 % dav_ca(i) = (p(i)-p(1))/(t(i)-t(1));
 % i = i+1;
 % endfor
%endfor

%~~~Run Calc's for cumulative slopes; REALLY need to implement a cleaner version of this that automatically
%scans for names, simply by placing names A1, A2, ... in an array via nested for loops

for i = 2:length(t) %for statement for 
  d_A1(i) = (A1(i)-A1(1))/(t(i)-t(1));
  i = i+1;
endfor
for i = 2:length(t) %for statement for 
  d_A2(i) = (A2(i)-A2(1))/(t(i)-t(1));
  i = i+1;
endfor
for i = 2:length(t) %for statement for 
  d_A3(i) = (A3(i)-A3(1))/(t(i)-t(1));
  i = i+1;
endfor
for i = 2:length(t) %for statement for 
  d_B1(i) = (B1(i)-B1(1))/(t(i)-t(1));
  i = i+1;
endfor
for i = 2:length(t) %for statement for 
  d_B2(i) = (B2(i)-B2(1))/(t(i)-t(1));
  i = i+1;
endfor
for i = 2:length(t) %for statement for 
  d_B3(i) = (B3(i)-B3(1))/(t(i)-t(1));
  i = i+1;
endfor
for i = 2:length(t) %for statement for 
  d_B4(i) = (B4(i)-B4(1))/(t(i)-t(1));
  i = i+1;
endfor
for i = 2:length(t) %for statement for 
  d_C1(i) = (C1(i)-C1(1))/(t(i)-t(1));
  i = i+1;
endfor
for i = 2:length(t) %for statement for 
  d_C2(i) = (C2(i)-C2(1))/(t(i)-t(1));
  i = i+1;
endfor
for i = 2:length(t) %for statement for 
  d_C3(i) = (C3(i)-C3(1))/(t(i)-t(1));
  i = i+1;
endfor
for i = 2:length(t) %for statement for 
  d_C4(i) = (C4(i)-C4(1))/(t(i)-t(1));
  i = i+1;
endfor
for i = 2:length(t) %for statement for 
  d_D1(i) = (D1(i)-D1(1))/(t(i)-t(1));
  i = i+1;
endfor
for i = 2:length(t) %for statement for 
  d_D2(i) = (D2(i)-D2(1))/(t(i)-t(1));
  i = i+1;
endfor
for i = 2:length(t) %for statement for 
  d_D3(i) = (D3(i)-D3(1))/(t(i)-t(1));
  i = i+1;
endfor
for i = 2:length(t) %for statement for 
  d_D4(i) = (D4(i)-D4(1))/(t(i)-t(1));
  i = i+1;
endfor

%Calculate slope stdevs for the bar chart:
sd_A = std([d_A1;d_A2;d_A3]);
sd_B = std([d_B1;d_B2;d_B3;d_B4]);
sd_C = std([d_C1;d_C2;d_C3;d_C4]);
sd_D = std([d_D1;d_D2;d_D3;d_D4]);

%Calculate average slopes:
av_dA = mean([d_A1;d_A2;d_A3]);
av_dB = mean([d_B1;d_B2;d_B3;d_B4]);
av_dC = mean([d_C1;d_C2;d_C3;d_C4]);
av_dD = mean([d_D1;d_D2;d_D3;d_D4]);

%Define values to display, of t=mins:
xs = [10,15,20];

%Plot a bar chart for average with standard deviations as error bars:
figure(1)
hold on
bar([-av_dA(xs); -av_dB(xs); -av_dC(xs); -av_dD(xs)])
%NEEDS implementation in multi-version
%errorbar([1:4], [-av_dA(20); -av_dB(20); -av_dC(20); -av_dD(20)], [sd_A(20); sd_B(20); sd_C(20); sd_D(20)])
xlabel("Treatments: 0.05 mM, 0.5 mM, 5 mM, 0 mM")
ylabel("Activity as dF/dt (AU/s)")
title("Activity of TEV protease at differing concentrations with BS-TEV; 10,15, and 20-minute cumulative averages over brief time series")