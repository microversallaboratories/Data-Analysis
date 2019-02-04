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

%Plot Standard Deviations as area regions around each line of interest with 
%corresponding color:
%Define differences
a = [A-B]
c = [C-D]
e = [E-F]
g = [G-H]

fill([t; flipud(t)], [a; flipud(a)], "b")
fill([t; flipud(t)], [c; flipud(c)], "g")
fill([t; flipud(t)], [e; flipud(e)], "r")
fill([t; flipud(t)], [g; flipud(g)], "p")