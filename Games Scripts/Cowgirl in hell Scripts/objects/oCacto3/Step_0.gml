get_damaged(oDamageEnemy);

//mostra o dano
var _healthpercent = 1 - (hp/maxhp);
image_index = _healthpercent *(image_number);
if hp <= 0{
	//Destroi o cacto
	instance_destroy();
	}








