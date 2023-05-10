//tomando dano
get_damaged(oDamageEnemy);

if hp <= 0{
	
	//soma ao contador de abates
	global.enemykillcount++;
	
	//determina a chance de dropar um item
	var _chance = irandom(100);
	
	if _chance < 10{
		
	//cria a coisa
	instance_create_depth(x,y,depth,oHearth);
	
	}
	
	//destroi a si mesmo
	instance_destroy();}









