% task 1  format compact and loose
format bank
%format loose

%disp(1:8)
%disp(1:5)

%%% task  2
result = ( 17*(sqrt(5) - 1))/(15^2 - 13^2 ) + ( 5^7*log10(exp(3)))/(pi * sqrt(120) ) + (log(4))^3;
disp(result);


%%% task 3

z = 1000:-3:100;
disp(z)
z = 1000:-3:99;
z(end)=99;
disp(z);


%%%% task 4

a = [5 3];
%disp(a)
b = [a; a];
%disp(b)
c = [4; 6];
%disp(c)
d = [8 9 7 1];
%disp(d)


e = [b c c; d];



%disp(e);


e(:, 3) = [];


%disp('Matrix e after :');
%disp(e);


%%% task 4
mat_A =[1:8;9:16;17:24;25:32;33:40];
%disp(mat_A)

%%%% task 5

mat_A4=[2 1;0 5;7 4];
mat_B4=[5 3 ; -2 -4];
mat_C4=[2 3 ;-5 -2 ; 0 3];
maat_D4=[ 1 2];
disp('ssadasdasdasd')
  % p1
result_4_1=inv(mat_A4*reshape(mat_C4 ,2,3));
disp(result_4_1);
  %p2

result_4_2=det(mat_B4);
disp(result_4_2);
  %p3
result_4_3=det((mat_A4*reshape(mat_C4 ,2,3)));
disp(result_4_3);

%%%%% task 5
mat_A5 = [2 1 -3; 4 -2 3; -2 2 -1];
mat_B5 = [11; 8; -6];

%mat_X5=  (inv(mat_A5)*mat_B5);
mat_X5=  inv(mat_A5)*mat_B5;
disp(mat_X5)


