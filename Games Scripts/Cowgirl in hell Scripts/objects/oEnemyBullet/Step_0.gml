	//pausa a si mesmo
	if screen_pause() {exit;};
switch(state){

//espera para atirar no tchola
case 0:

	//mira no tchola
	if instance_exists(obj_player){
	dir = point_direction(x,y,obj_player.x,obj_player.y);	
	}

	//define a profundidade para ficar visivel né krl
	depth = -y -50 //pq menos 50? pq a porra do walker já tem -y seu merda.
	
	break;
	
	//viagem do tiro
	case 1 :
	
	//movimento
	xspd = lengthdir_x(spd,dir);
	yspd = lengthdir_y(spd,dir);
	x += xspd;
	y += yspd;
	
	//atualiza a profundidade
	depth = -y;
	
	break;

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











