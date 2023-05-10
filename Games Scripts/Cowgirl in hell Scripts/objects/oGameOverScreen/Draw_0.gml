var _camx = camera_get_view_x(view_camera[0]);
var _camw = camera_get_view_width(view_camera[0]);
var _camy = camera_get_view_y(view_camera[0]);
var _camh = camera_get_view_height(view_camera[0]);

//desenha um retangulo preto
draw_set_alpha(alpha*alphamax)
draw_rectangle_color(_camx,_camy,_camx + _camw,_camy + _camh,c_black,c_black,c_black,c_black,false);
draw_set_alpha(1);

//desenha o texto de game over
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_alpha(alpha);
	draw_set_font(f8bitoperator);
	
	//game over
	var _gameoverxoffset = -32;
	draw_text_transformed(_camx + _camw/2,_camy +_camh/2 + _gameoverxoffset,"Game Over",7,7,0);
	

	//"shoot to restart cowgirl"
	var _restartxoffset = 80;
	draw_text_transformed(_camx + _camw/2,_camy + _camh/2 + _restartxoffset,"- Shoot to Restart Cowgirl -",2,2,0);

	//reseta as funções de desenho
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_alpha(1);











