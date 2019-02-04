%This script plots all four graphs of average fluorescence versus time for the 
%four treatments A, C, E, G corresponding to standard deviations B, D, F, H

plot (t, B, "bo-");
hold on
plot (t, D, "go-");
plot (t, F, "ro-");
plot (t, H, "po-");

%Format the plot
title("Standard deviations of flourescence versus time, F (AU)");
xlabel("Time, s");
ylabel("Fluorescence, AU");
grid on
set(gca,'xtick',[0:1000:8000])
set(gca,'ytick',[0:10:120])