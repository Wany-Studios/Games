//botões
#region
right = global.rightkey;
left = global.leftkey;
up = global.upkey;
down = global.downkey;
shootkey = global.shootkey;
swapkeypressed = global.swapkeypressed;
startkeypressed = global.startkeypressed;
#endregion

//pauses
#region
	//pause menu
	if startkeypressed
	{
		if !instance_exists(oPauseMenu)
			{
				instance_create_depth(0,0,0,oPauseMenu);
			}else{instance_destroy(oPauseMenu);}
	}
	
	//pausa a si mesmo
	if screen_pause() {exit;};

#endregion

//movimentação
#region


	//movimento do jogador

	//dando as direções
	
	movedir = point_direction(0,0,global.xaxisleft,global.yaxisleft);

	//aplicando a velocidade de x e y
	var _spd = 0;
	var _inputlevel = point_distance(0,0,global.xaxisleft,global.yaxisleft);
	_inputlevel = clamp(_inputlevel,0,1);
	_spd = movespd * _inputlevel;
	
	xspd = lengthdir_x(_spd,movedir);
	yspd = lengthdir_y(_spd,movedir);
	
	//colisões
	if place_meeting(x + xspd, y, obj_wall){
	xspd = 0;	
	}
	
	if place_meeting(x, y + yspd, obj_wall){
	yspd = 0;	
	}
	
	if place_meeting(x + xspd, y, oWallBroxa){
	xspd = 0;	
	}
	
	if place_meeting(x, y + yspd, oWallBroxa){
	yspd = 0;	
	}
	
	if place_meeting(x,y,oWalkerHead) or place_meeting(x,y,oWalkerHeadLeft){movespd = 1.4;};
	if !place_meeting(x,y,oWalkerHead) or !place_meeting(x,y,oWalkerHeadLeft){movespd = 2;};

	//isso movimenta o jogador ao falar o que o X e o Y dele é.
	x += xspd;
	y += yspd;
	
	//profundidade
	depth = -bbox_bottom;
	#endregion


//tomando dano
#region
if get_damaged(oDamagePlayer, true)
{
	//pausa a tela
	create_screen_pause(20);
	
	//balança a tela
	screen_shake(5);
	
}
#endregion

//controle de sprites
#region
	//player aiming
	centery = y + centeryoffset;
	
	//teclas
	if global.controllermode == 0{
	aimdir = point_direction(x,centery,mouse_x,mouse_y);
	}
	
	//controle
	if global.controllermode == 1{
		if global.xaxisright != 0 or global.yaxisright != 0{
		aimdir = point_direction(0,0,global.xaxisright,global.yaxisright);
		}
	}
	
	//da a certeza sobre o sprite correto e sua direção
	face = round(aimdir/90);
	if face == 4 {face = 0;};
	
	//animando
	if xspd == 0 and yspd == 0{
	image_index = 0;	
	}
	
	//define o sprite do jogador
	sprite_index = sprite[face];
#endregion

//troca de armas
#region
var _playerweapons = global.playerweapons;
	
	//ciclo de troca entre armas
	if swapkeypressed{
	
	//escolhe a seleção de armas e fé.
	selectedweapon++;
	if selectedweapon >= array_length(_playerweapons){selectedweapon = 0;};
	//não deixa a troca de arma bugar
    if array_length(global.playerweapons) > 3 {array_resize(global.playerweapons,3)}
	}
	
	
	//demarca a arma nova
	weapon = _playerweapons[selectedweapon];
	
	
#endregion

//atirando com a arma 
#region 
	if shoottimer > 0 {shoottimer--;};
	if shootkey and shoottimer <= 0{
		
	//reseta o tempo de tiro
	shoottimer = weapon.cooldown;
	
	//balanço de tela
	screen_shake(1);
	
//atirando		
	//criando a bala
	var _xoffset = lengthdir_x(weapon.length + weaponoffsetdist, aimdir);
	var _yoffset = lengthdir_y(weapon.length + weaponoffsetdist, aimdir);
	
	var _spread = weapon.spread;
	var _spreaddiv = _spread/ max(weapon.bulletnum-1,1);
	
	//da o correto numero de balas
	for (var i = 0; i < weapon.bulletnum; i++){
	var _bulletinst = instance_create_depth(x + _xoffset + i,centery + _yoffset,depth-100,weapon.bulletobj);
	
	//muda a direção da bala
	with(_bulletinst){
		dir = other.aimdir - _spread/2 + _spreaddiv*i;	
		
		//muda a direção da bala na criação se necessário
		if dirfix == true{
		image_angle = dir;	
		}
	}
	}
	}



#endregion

//death / gameover
#region

if hp <= 0
{
	
	//cria o objeto de game over
	instance_create_depth(0,0,-10000,oGameOverScreen);
	
	//se destroi
	instance_destroy();

}
#endregion

//fase concluida
if !instance_exists(oWalker) and global.enemykillcount >=100{
	
instance_create_depth(0,0,-10000,oLevelCompleteScreen);

	//se destroi
	instance_destroy();
}





