

//flutuando
floatdir += floatspd;
y = ystart + dsin(floatdir)*1;

//da a arma ao player
if place_meeting(x,y,obj_player){
	
	//adiciona a arma ao inventário
	array_push(global.playerweapons,weapon);
	
	//seta a arma do jogador
	obj_player.selectedweapon = array_length(global.playerweapons) - 1;
	
	//destroi
	instance_destroy();

}











