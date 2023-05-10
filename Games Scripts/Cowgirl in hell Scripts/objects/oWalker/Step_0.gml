//pausa a si mesmo
if screen_pause() {exit;};

//comandos de codigo
var _wallcollisions = true;
var _getdamage = true;

//state machine
switch(state){

	//spawna do objeto mandado
		case -1 :
		
		//fade in caralho
		if image_alpha < 1{spd=0; image_alpha += fadespd;}
		
		//saindo para fora
		_wallcollisions = false;
		_getdamage = false;
		
		if image_alpha >= 1{
		
		//da a velocidade coreta e a direção
		spd = emergespd;
		dir = 270;
		
		//troca para o estado de perseguição
		if !place_meeting(x,y,obj_wall){
		
		state = 0;
		
		}
			
		}
		
		break;

	//estado de perseguição
		case 0 :
		#region
		//perseguição ao jogador
		if instance_exists(obj_player){dir = point_direction(x,y,obj_player.x,obj_player.y);}
		
		//da a velocidade correta
		spd = chasespd;
		
		//transição para o estado de tiro
			var _camleft = camera_get_view_x(view_camera[0]);
			var _camright = _camleft + camera_get_view_width(view_camera[0]);
			var _camtop = camera_get_view_y(view_camera[0]);
			var _cambottom = _camtop + camera_get_view_height(view_camera[0]);
			
		
		//transicionando entre estados
		if bbox_right > _camleft and bbox_left < _camright and bbox_bottom > _camtop and bbox_top < _cambottom
		{
		shoottimer++;
		}
		
		if shoottimer > cooldowntimer{
		
		//vai para o estado de atirando
		if distance_to_object(obj_player) >= 100 {state = 1;}
		
		//reseta o temporarizador para descansar pq ninguém é de ferro mané
		shoottimer = 0;
		
		}
		
		break;
		#endregion
		//estado de parar e atirar
		case 1 :
		#region
		//puxa a posição do jogador
		if instance_exists(obj_player){dir = point_direction(x,y,obj_player.x,obj_player.y);}
		
		//define a velocidade
		spd = 0;
		
		//pausa a animação
		image_index = 0;
		
		//atirando o orbe
		shoottimer++;
		
		//criando o orbe
		if shoottimer == 1{
		bulletinst = instance_create_depth(x+bulletxoffset*face,y+bulletyoffset,depth,oEnemyBullet);
		}
		
		//mantem o orbe na mão do bixo
		if shoottimer <= winduptimer and instance_exists(bulletinst){
		
			bulletinst.x = x + bulletxoffset*face;
			bulletinst.y = y + bulletyoffset;
		
		}
		
		//atirando a bala depois de preparar a magia
		if shoottimer == winduptimer and instance_exists(bulletinst){
			
			//define o estado de movimento da bala
			bulletinst.state = 1;
		}
		
		//se recupera e volta a perseguir o jogador
		if shoottimer > winduptimer + recoverytime{
		
		//volta ao estado
		state = 0;
		
		//reseta o tempo para usar de novo
		shoottimer = 0;
		
		}
		
		break;
		#endregion
		
		
		}


	
	//dando as velocidades
	xspd = lengthdir_x(spd,dir);
	yspd = lengthdir_y(spd,dir);
	
	if dir > 90 and dir < 270{face = -1;}
	else{face = 1;}
	
	//evita moonwalking
	if xspd > 0{face = 1;}
	if xspd < 0{face = -1;}
	
	//colisões
	if _wallcollisions == true{
	if place_meeting(x + xspd, y, obj_wall) or place_meeting(x + xspd, y, oEnemyParent) or place_meeting(x + xspd, y, oWallBroxa){
	xspd = 0;	
	 }
	
	if place_meeting(x , y + yspd, obj_wall) or place_meeting(x, y + yspd, oEnemyParent) or place_meeting(x, y + yspd, oWallBroxa){
	yspd = 0;	
	 }
	}
	
	//enemy collisions
	
	
	//movendo
	x += xspd;
	y += yspd;
	
	//definindo profundidade
	depth = -y;

// Inherit the parent event
if _getdamage == true{
	//tomando dano e morrendo
	event_inherited();
	
}
	
	if hp <= 0 and face = 1{instance_create_depth(x,y,1,oWalkerHead)}
	if hp <= 0 and face = -1{instance_create_depth(x,y,1,oWalkerHeadLeft)}
	
	if hp <= 12 {sprite_index = sWalkerDamage20p}
	if hp <= 8 {sprite_index = sWalkerDamage40p}
	if hp <= 4 {sprite_index = sWalkerDamage60p}
