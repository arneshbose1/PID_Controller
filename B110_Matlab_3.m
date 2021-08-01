connector on;
ad=arduino('COM5', 'Uno','Libraries','Servo');
s=servo(ad,'D6');
m=mobiledev;
m.Logging=1;
while 1
    angle=m.orientation(2);
    angle=angle-0;
    angle=angle+87;
    if(angle>135) angle= 135;
    end
    if(angle<45) angle=45;
    end
    angle=angle/180;
    writePosition(s,angle);
end
