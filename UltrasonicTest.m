dist = brick.UltrasonicDist(1);
disp(dist);

brick.MoveMotor('AB', -50);
while 1
    pause(0.05);
    dist = brick.UltrasonicDist(1);
    brick.MoveMotor('AB', -50);
    if(dist < 15)
        brick.ResetMotorAngle('A');
        brick.StopMotor('B');
        pause(0.5);
    end
end