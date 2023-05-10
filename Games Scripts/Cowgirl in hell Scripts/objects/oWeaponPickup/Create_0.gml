depth = -y;

//flutuando
floatdir = 0;
floatspd = 6;

//define a arma de acordo com a imagem presente 
if image_index == 0{
	weapon = global.weaponlist.pinkrod;	
}

if image_index == 1{
	weapon = global.weaponlist.yellowgun;	
}

if image_index == 2{
	weapon = global.weaponlist.redgun;	
}

//da o sprite correto
sprite_index = weapon.pickupsprite;
image_index =  0;

//verifica se o jogador já possui a arma
	var _size = array_length(global.playerweapons);
	for (var i=0; i < _size; i++){
	
		//checa se a arma já está presente na lista de armas
		if weapon == global.playerweapons[i]{instance_destroy();}
		
	}











