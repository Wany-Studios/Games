//pega as coordenadas da camera
var _camx = camera_get_view_x(view_camera[0]);
var _camy = camera_get_view_y(view_camera[0]);

//Coordenadas centrais do HUD
var _border = 8;
var _hudx = _camx + _border;
var _hudy = _camy + _border;



//desenha o hp do tchola
if instance_exists(obj_player){

draw_sprite(sPlayerHealthBar,0,_hudx,_hudy);

for (var i = 0; i < playermaxhp; i++)
{

//exibe o hp atual
var _img = 1;
if i+1 <= playerhp {_img = 2;};

var _sep = 3;
draw_sprite(sPlayerHealthBar,_img,_hudx+_sep*i,_hudy);
}
}

//desenha o contador de abates
	var _enemycountoffset = 24;
	var _echudx = _hudx;
	var _echudy = _hudy + _enemycountoffset;
	
	//desenha o fundo/caixa
	draw_sprite(sEnemyCountHud,0,_echudx,_echudy);
	
	//desenha o texto
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_font(f8bitoperator);
	
	//o contador de inimigos atual
	draw_text(_echudx + 20,_echudy + 1,string(global.enemykillcount));
	
	//total de inimigos a ser abatido
	draw_text(_echudx + 44,_echudy + 1,"/" + string(global.enemyroommax));
	
	











