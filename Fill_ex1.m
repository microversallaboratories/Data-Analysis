x = (1:10)'
y = rand(10,1);
fill([x; flipud(x)], [y; -flipud(y)], [1 0 0])