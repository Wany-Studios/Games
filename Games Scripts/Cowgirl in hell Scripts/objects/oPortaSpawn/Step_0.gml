//pausa a si mesmo
if screen_pause() {exit;};

//cria um inimigo
timer++;

	//reseta o timer se o limite de inimigos foi atigindo
	if instance_number(oEnemyParent) >= global.activeenemymax or global.totalenemiesspawned >= global.enemyroommax
	{timer = 0;} 

if timer >= spawntimer and !place_meeting(x,y+16,oWalker)
{

	//cria inimigos
	var _inst = instance_create_depth(x,y,depth-1,oWalker);
	with(_inst){image_alpha=0; state = -1;}
	
	//reseta o timer
	timer = 0;

}
if !instance_exists(oWalker) and scr_fim_animacao(){image_speed = 0;};
if instance_exists(oWalker){sprite_index=sPortaAberta};
if !instance_exists(oWalker) and global.enemykillcount >= 100{
	
	sprite_index=sPortaSelada;
	image_speed = 1;
	if scr_fim_animacao(){image_speed=0;}
	}










