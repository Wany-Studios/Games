get_damaged(oDamageEnemy);

//mostra o dano
var _healthpercent = 1 - (hp/maxhp);
image_index = _healthpercent *(image_number);
//morte 
if hp <= 0{
	
	//cria a explosão
	var _boominst = instance_create_depth(x+8,y+8,-3000,oBigBoom);
	with(_boominst)
	{
		image_xscale = 2;
		image_yscale = 2;	
	}
	
	//pause de tela
	create_screen_pause(7);
	//balança a tela
	screen_shake(8);
	
	//Destroi a caixa
	instance_destroy();
	}












