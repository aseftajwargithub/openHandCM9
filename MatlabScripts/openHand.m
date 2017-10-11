function openHand(s)
%openHand Opens all fingers
%   Takes a serial object. Will synchronously open
%   the fingers.

torque = 600;

if(~exist('s'))
    disp('ERROR: No Serial Object Provided');
end

position = 0;

fprintf(s, 'a2');
fprintf(s, 't%d\n', torque);
fprintf(s, 'a3');
fprintf(s, 't%d\n', torque);
fprintf(s, 'a4');
fprintf(s, 't%d\n', torque);

fprintf(s, 'a2');
fprintf(s, 'p%d\n', position);

fprintf(s, 'a3');
pause(0.01)
fprintf(s, 'p%d\n', position);

fprintf(s, 'a4');
fprintf(s, 'p%d\n', position);


end

