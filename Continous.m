x = linspace(0,1,20)';
y = sin(x);
dy = .1*(1+rand(size(y))).*y;  % made-up error values
fill([x;flipud(x)],[y-dy;flipud(y+dy)],'green','linestyle','none');
line(x,y)