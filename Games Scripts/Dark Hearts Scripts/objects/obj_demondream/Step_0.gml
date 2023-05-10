var _border = 64

if y < global.cmy - _border{
 y = global.cmy +global.cmh + _border;	
}

if y > global.cmy +global.cmh + _border{
 y = global.cmy - _border;	
}

if x < global.cmx - _border{
 x = global.cmx +global.cmw + _border;	
}

if x > global.cmx +global.cmw + _border{
 x = global.cmx - _border;	
}

dir = point_direction(x,y,obj_player.x,obj_player.y);

hspd = lengthdir_x(spd,dir);
vspd = lengthdir_y(spd,dir);

if place_meeting(x + hspd, y, obj_bloco){
while 	!place_meeting(x + sign(hspd), y, obj_bloco){
	x += sign(hspd);
}
hspd = 0;
}
x += hspd;
if place_meeting(x, y + vspd, obj_bloco){
while 	!place_meeting(x , y + sign(vspd), obj_bloco){
	y += sign(vspd);
}
vspd = 0;
}

y += vspd;

if hp <= 0 {
instance_destroy();	
}
if room = rm_dreamland{
if distance_to_object(obj_xispa_demon) <= 2.5 {instance_destroy()}
}
