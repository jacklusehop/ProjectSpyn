global key;
InitKeyboard();
 
while 1 
    pause(0.01);
    switch key
        case 'uparrow'
            brick.MoveMotor('AB', -50);
        case 'downarrow'
            brick.MoveMotor('AB', 50);
        case 'leftarrow'
            brick.MoveMotor('B', -50);
        case 'rightarrow'
            brick.MoveMotor('A', -50);
        case 0
            brick.StopAllMotors();
        case 'q'
            break;
        case 'w'
            brick.MoveMotor('C', 10);
        case 's'
            brick.MoveMotor('C', -10);
    end
end
