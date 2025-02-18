%Write a function called tri_area that returns the area of a triangle with base b and height h, where b and
% h are input arguments of the function in that order.

function area =tri_area(base,height)
area=.5*(base*height);
end

% Test the tri_area function
base = 5;
height = 4;
result = tri_area(base, height);
fprintf('Area of triangle with base %.1f and height %.1f is %.1f\n', base, height, result);