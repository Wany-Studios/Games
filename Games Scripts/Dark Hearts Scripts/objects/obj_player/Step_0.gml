#region Movimentação
botao_direito = keyboard_check(vk_right) or keyboard_check(ord("D"));
botao_cima = keyboard_check(vk_up) or keyboard_check(ord("W"));
botao_esquerdo = keyboard_check(vk_left) or keyboard_check(ord("A"));
botao_baixo = keyboard_check(vk_down) or keyboard_check(ord("S"));

//movimentando horizontalmente(x) e verticalmente(y)

xspd = (botao_direito - botao_esquerdo) * move_spd; //sempre que o boneco move, é somado +1 ao seu posicionamento atual, ao presitar o botão oposto ele subtrai -1
yspd = (botao_baixo - botao_cima) * move_spd;
move_spd = 1;

//pause
if instance_exists(obj_pause)
{
xspd = 0;
yspd = 0;
}

//animando o movimento
mask_index = sprite[DOWN]
if yspd == 0
{
if xspd > 0 {face = RIGHT};
if xspd < 0 {face = LEFT};
}
if xspd > 0 && face == LEFT {face = RIGHT};
if xspd < 0 && face == RIGHT {face = LEFT};
if xspd == 0
{
if yspd > 0 {face = DOWN};
if yspd < 0 {face = UP};
}
sprite_index = sprite[face];

//colisão
 
if place_meeting(x + xspd, y, obj_bloco)
{
	xspd = 0;
}

if place_meeting(x, y + yspd, obj_bloco)
{
	yspd = 0;
}

//aplicando o movimento

x+= xspd;
y += yspd;

// se o boneco para a animação também para

if xspd == 0 && yspd == 0 {image_index = 0}



//profundidade
depth = -bbox_bottom;
#endregion
