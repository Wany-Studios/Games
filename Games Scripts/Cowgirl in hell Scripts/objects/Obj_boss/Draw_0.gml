event_inherited();

if hit == true{
gpu_set_fog(true, c_white, 0, 0);
draw_self();
gpu_set_fog(false, c_white, 0, 0);
}else{draw_self();}

//desenha o hp do tchola
if instance_exists(Obj_boss){

draw_sprite(sBoss1HealthBar,0,x-10,y-70);

for (var i = 0; i < maxhp; i++)
{

//exibe o hp atual
var _img = 1;
if i+1 <= hp {_img = 2;};


draw_sprite(sBoss1HealthBar,_img,4*i,y-50);
	
}
}





