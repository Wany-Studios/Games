//altura e largura da camera
var _camw = camera_get_view_width(view_camera[0]);
var _camh = camera_get_view_height(view_camera[0]);



//centraliza no player
if instance_exists(obj_player){
x = obj_player.x - _camw/2;
y = obj_player.centery - _camh/2;
}

//balanço de camera
	//balanço horizontal
	if xshakeamount > 0
	{
		xshakedir += xshakedirspd;	
		xshakeamount -= xshakeamountspd;
	}else{
		xshakeamount = 0;	
		xshakedir = 0;
	}
	
	xshake = dsin(xshakedir) * xshakeamount;
	
	//balanço vertical
	if yshakeamount > 0
	{
		yshakedir += yshakedirspd;	
		yshakeamount -= yshakeamountspd;
	}else{
		yshakeamount = 0;	
		yshakedir = 0;
	}
	
	yshake = dsin(yshakedir) * yshakeamount;
	
//adiciona ao balanço de camera
x += xshake;
y += yshake;

//suaviza as bordas
x = clamp(x,0,room_width - _camw);
y = clamp(y,0,room_height - _camh);

//da a posição da camera
camera_set_view_pos(view_camera[0],x,y);











