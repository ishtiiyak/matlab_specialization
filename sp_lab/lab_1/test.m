t = linspace(0, 2 * pi, 100);%(if you have no idea of linspace, search on 
y1 = sin(t); y2 = t; 
y3 = t - (t.^ 3)/6 + (t.^ 5)/120 - (t.^ 7)/5040; 
plot(t,y1,t,y2,'-',t,y3,'--') 
axis([0 5 -1 5]) 
xlabel('t') 
ylabel('sin(t) approximation') 
title('sin(t) function') 
text(3.5, 0, 'Point') 
gtext('Linear Graph separates') 
gtext('Sin Graph Separates') 
grid 
legend('y1','y2','y3')