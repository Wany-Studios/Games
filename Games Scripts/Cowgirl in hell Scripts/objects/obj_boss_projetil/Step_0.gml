//pausa a si mesmo
if screen_pause() {exit;};

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




















