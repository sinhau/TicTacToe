function [user,box,totalClicks] = drawX(boxNum,box,user,totalClicks)

if box.user(boxNum) ~= inf
   msgbox('Click an empty box!');
   return;
end

S = 2500;
scatter(box.xMin(boxNum)+1.5,box.yMin(boxNum)+1.5,S,'x','r');
box.user(boxNum) = user;
totalClicks = totalClicks + 1;

if user == 1
    user = 0;
else
    user = 1;
end

end