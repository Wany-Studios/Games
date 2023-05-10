//flutuando
floatdir += floatspd;
y = ystart + dsin(floatdir)*1;


//coletando
if place_meeting(x,y,obj_player) and obj_player.hp < 20{

	//cura o jogador
	obj_player.hp += heal;
	
	//destroi a si mesmo
	instance_destroy();

}











