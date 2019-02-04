%This script plots all four graphs of average fluorescence versus time for the 
%four treatments A, C, E, G corresponding to standard deviations B, D, F, H

plot (t, A, "bo-");
hold on
plot (t, C, "go-");
plot (t, E, "ro-");
plot (t, G, "po-");

%Format the plot
title("Average flourescence versus time, F (AU)");
xlabel("Time, s");
ylabel("Fluorescence, AU");
grid on
set(gca,'xtick',[0:1000:8000])
set(gca,'ytick',[1000:200:2500])