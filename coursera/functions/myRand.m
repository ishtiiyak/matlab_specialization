
%
% function a= myRand
% a= 1+rand(3,4)*9;
% end


%%%% more generic
% function a= myRand(low,high)
% a= low+rand(3,4)*(high-low);
% end

%%%%% with two outputs
% function [a,s]= myRand(low,high)
% a= low+rand(3,4)*(high-low);
% v=a(:);
% s=sum(v);
% end
%  >>[x s] = myRand(1,10)

%%% sub functions
function [a,s]= myRand(low,high)
a= low+rand(3,4)*(high-low);
s= sumOfAll(a);

function summa = sumOfAll(M)
v=M(:);
summa =sum(v);






