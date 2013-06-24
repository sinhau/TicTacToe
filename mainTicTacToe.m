clear all;close all;clc;

% Initialize everything
makeGrid();
user = 0;
box = struct('boxNumber',[1 2 3 4 5 6 7 8 9],'xMin',[0 0 0 3 3 3 6 6 6],...
    'xMax',[3 3 3 6 6 6 9 9 9],'yMin',[6 3 0 6 3 0 6 3 0],'yMax',[9 6 3 9 6 3 9 6 3]);

% Begin game
while(1)
    [x,y,button] = ginput(1);   
    if button==1 
        boxNum = findBox(x,y,box);
        if user == 0
            user = drawCirc(boxNum,box,user);
        else
            user = drawX(boxNum,box,user);
        end
    end
end