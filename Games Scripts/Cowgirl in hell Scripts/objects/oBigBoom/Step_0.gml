//pausa a si mesmo
if screen_pause() {exit;};

//cria o objeto de dano
if createdamageobjects == false{

	//cria um objeto de dano aos avolta
	damageinst = instance_create_depth(x,y,0,oDamageAll);
	with(damageinst)
	{
		damage = other.damage;
		mask_index = other.sprite_index;
		image_xscale = other.image_xscale;
		image_yscale = other.image_yscale;
		
	}
	
	//seta a variavel para não criar milhares de objetos de dano
	createdamageobjects = true;
	
}

//termina o processo se a animação acaba
if floor(image_index) > 1{

	if instance_exists(damageinst){instance_destroy(damageinst);}

}











