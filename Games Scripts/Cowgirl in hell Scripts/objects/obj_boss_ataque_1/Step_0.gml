//pausa a si mesmo
if screen_pause() {exit;};

if scr_fim_animacao(){
	
var _dir = 0;

repeat(4){
	
var _inst = instance_create_depth(x,y,depth, obj_boss_projetil);
_inst.speed = 3;
_inst.direction = _dir;

_dir += 90;

}
instance_destroy();
}

//limpando a bola
	//limpando se for longe demais
	var _pad = 16;
	if bbox_right < -_pad or bbox_left > room_width + _pad or bbox_bottom < -_pad or bbox_top > room_height + _pad{
	destroy = true;	
	}

	//colisao com o tchola
	if hitconfirm == true and playerdestroy == true {destroy = true;};
	
	if destroy == true {instance_destroy();};
	
	//colisao
	if place_meeting(x,y,obj_wall){destroy = true;};





