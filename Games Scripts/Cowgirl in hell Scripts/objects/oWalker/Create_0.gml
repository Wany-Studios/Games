// Inherit the parent event
event_inherited();

spd = 0;
chasespd = 1.1;
dir = 0;
xspd = 0;
yspd = 0;
hp = 16;
face = 1;
damage = 4;


//state machine
state = 0;

//sai da carroça
fadespd = 1/15;
emergespd = 1.1;

//estado de magia
cooldowntimer = 3*60;
shoottimer = irandom(cooldowntimer);
winduptimer = 60;
recoverytime = 45;
bulletinst = noone;

bulletxoffset = 5;
bulletyoffset = -8;