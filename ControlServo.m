%This program connects to the openCM9 over serial and moves it around to
%demonstrate that it is connected. You should run this first.

if(~exist('s'))
    s = serial('COM7');
    fopen(s);
    disp('Opening Serial');
end


fprintf(s, 'a1');
fprintf(s, 'p0');
pause(2);
fprintf(s, 'p1600');
pause(2);

closeTo = 1600;

closeHand(s, closeTo);
pause(3);
closeHand(s, 0);

%Do some stuff
fprintf(s, 'a2');
fprintf(s, 'p%d\n', closeTo);

fprintf(s, 'a3');
fprintf(s, 'p%d\n', closeTo);

fprintf(s, 'a4');
fprintf(s, 'p%d\n', closeTo);

pause(5);

fprintf(s, 'a2');
fprintf(s, 'p0');

fprintf(s, 'a3');
fprintf(s, 'p0');

fprintf(s, 'a4');
fprintf(s, 'p0');

pause(1);
