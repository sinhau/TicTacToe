function user = drawX(boxNum,box,user)

S = 2500;
scatter(box.xMin(boxNum)+1.5,box.yMin(boxNum)+1.5,S,'x','r');

if user == 1
    user = 0;
else
    user = 1;
end

end