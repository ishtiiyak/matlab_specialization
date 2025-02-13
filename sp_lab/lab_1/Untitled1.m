t=linspace(0,2*pi,100);
y1=sin(t); y2=t;
y3=t-(t.^3)/6+(t.^5)/120-(t.^7)/5040;
plot(t,y1);
hold on;
plot(t,y2,'-');
hold on;
plot(t,y3,'--');
hold on
axis([0 5 -1 5])
xlabel('t')
ylabel('sin(t) approximation')
title('sin(t) funtion')
text(3.5,0,'Point')
gtext('Linear Graph Separates')
gtext('Sin Graph Seperates')
grid
legend('y1','y2','y3')