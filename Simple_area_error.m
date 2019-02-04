%Plot line C(t), then plot region formed by adding and subtracting D, the standard deviation array

plot(t,C)

fill([t; flipud(t)], [C+D; flipud(C+D)])