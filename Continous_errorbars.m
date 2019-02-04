%This script takes in sequential arrays of equal length, plotting them as 
%average and standard deviation continuous error plots for the given data:

%Define independent variable:

%Define dependent variable(s) as arrays: already done!
%Define changes as a second variable: Already done also!

%specify Area formatting for EACH plot:
%fill([t; flipud(t)],[(A-B); -flipud(A+B)],'green','linestyle','none');
%fill(t,[A-B],'blue','linestyle','none');
%hold on 
%fill([t; flipud(t)],[(C-D); -flipud(C+D)],'green','linestyle','none');
%fill([t; flipud(t)],[(E-F); -flipud(E+F)],'yellow','linestyle','none');

fill([t; flipud(t)],[(G+H); -flipud(G+H)],'red','linestyle','none');

%Draw all lines:
%line(t,A)
%line(t,C)
%line(t,E)
line(t,G)
line(t,H)
