%This script will take average values for fluorescence, plus their standard deviations,
%to generate a 3d plot of average and standard deviation from points around t = 12000 sec (20 mins)

%Init's and state var defs
n = length(t);
%i def below
av_ca = 0;
av_cc = 0;
av_ce = 0;
av_cg = 0;

%Cum. Average defined as (A_f - A_i)/(t_f - t_i); where i is t=t0 in all cases:
%~~Iterated over whole set of values i, representing the number in the array
%NOTES: t_0 defined as the first element, t(1); difference taken between the 
%given i value and the first element, STARTING with the SECOND element, i=2 to 
%avoid a div by zero error.
%
for i = 2:length(t) %for statement for A
  av_ca(i) = (A(i)-A(1))/(t(i)-t(1));
  i = i+1;
endfor
for i = 2:length(t) %C
  av_cc(i) = (C(i)-C(1))/(t(i)-t(1));
  i = i+1;
endfor
for i = 2:length(t) %E
  av_ce(i) = (E(i)-E(1))/(t(i)-t(1));
  i = i+1;
endfor
for i = 2:length(t) %G
  av_cg(i) = (G(i)-G(1))/(t(i)-t(1));
  i = i+1;
endfor
%~~~~Plotting these as a continuous graph
%~~~~
figure(1);
bar(t,-Aca)
hold on
errorbar(t,-Aca,B)
%~~~~
figure(2);
bar(t,-Acc)
errorbar(t,-Acc,D)
%~~~~
figure(3);
bar(t,-Ace)
errorbar(t,-Ace,G)
%~~~~
figure(4);
bar(t,-Acg)
errorbar(t,-Acg,H)
%~~~~
%Again, with Avg defined as (A_n - A_n-10) for local average resolution:



%PROBLEM DETERMINED: need to take standard deviation of rates of change for each
%trial, NOT the standard deviation of the plotted values themselves!