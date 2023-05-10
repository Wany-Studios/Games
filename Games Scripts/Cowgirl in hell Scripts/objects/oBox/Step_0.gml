get_damaged(oDamageEnemy);



//morte 
if hp <= 0{
	
	//determina a chance de dropar um item
	var _chance = irandom(100);
	
	if _chance < 30{
		
	//cria a coisa
	instance_create_depth(x,y,depth,oBeer);}
	}
	
//mostra o dano
var _healthpercent = 1 - (hp/maxhp);
image_index = _healthpercent *(image_number);
if hp <= 0{instance_destroy();}











