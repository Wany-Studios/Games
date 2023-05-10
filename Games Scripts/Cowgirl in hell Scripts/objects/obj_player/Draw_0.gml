//desenha a arma depois do jogador
	if aimdir >= 0 and aimdir < 180{
		draw_my_weapon();
	}

//desenha o jogador 
	draw_self();

	//chama o desenho
	if aimdir >= 180 and aimdir < 360{
	draw_my_weapon();
	}

draw_text(x-5,y-30,string(selectedweapon))



