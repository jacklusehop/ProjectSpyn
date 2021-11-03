dist = brick.UltrasonicDist(1);
disp(dist);

brick.MoveMotor('AB', -50);
while 1
    pause(0.05);
    dist = brick.UltrasonicDist(1);
    brick.MoveMotor('AB', -50);

    if(dist < 15)
        brick.StopAllMotors();
        pause(0.1);
        brick.MoveMotor('AB', 50);
        pause(0.1);
        brick.StopAllMotors();
        brick.MoveMotor('B', 50);
        pause(0.3);
    end
    
    colors = brick.ColorRGB(2);    
    disp(colors);
    if colors(1) > 180 && colors(2) > 100 && colors(3) < 100
        disp('yellow');
        brick.StopAllMotors();
        break
    elseif colors(1) > 155 && colors(2) < 50
        disp('red');
        brick.StopAllMotors();
        pause(3.0);
        brick.MoveMotors('AB', 50);
        pause(1.0);
    elseif colors(3) > 130 && colors(2) < 80 && colors(1) < 100
        disp('blue');
        brick.StopAllMotors();
        break
    end
    
end

KeyboardInput();