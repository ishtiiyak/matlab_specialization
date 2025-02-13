 
x = -2*pi:pi/10:2*pi;  
y = x.^2;  
z = sin(x);  
y1 = cos(x);  
z1 = exp(x);  
subplot(2,2,1),plot(x,y)
xlabel('parabola') 
ylabel('y approximation') 
title('parabolic function') 
grid  

subplot(2,2,2),plot(x,z) 
xlabel('sine') 
ylabel('sinx approximation') 
title('parabolic function')  
grid  
%clf
subplot(2,2,3),plot(x,y1)  
xlabel('cos') 
ylabel('cosx approximation') 
title('parabolic function') 
grid  

subplot(2,2,4),plot(x,z1)  
xlabel('exponen') 
ylabel('y approximation') 
title('parabolic function') 
grid  

