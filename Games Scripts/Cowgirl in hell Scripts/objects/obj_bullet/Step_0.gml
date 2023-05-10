	//pausa a si mesmo
	if screen_pause() {exit;};

	//movimento
	xspd = lengthdir_x( spd, dir);
	yspd = lengthdir_y( spd, dir);
	
	x+=xspd;
	y+=yspd;

	//depth
	depth = -y;

	//deletando

	//se bater vai destruir entao..
	if hitconfirm == true and enemydestroy == true{destroy = true};
	
	//destroi
	if destroy == true{instance_destroy();}
	
	//colisão
	if place_meeting(x, y, obj_wall) {destroy = true;}

	//bala fora de alcance
	if point_distance(xstart,ystart,x,y) > maxdist {destroy = true;}
	
	











