if keyboard_check_pressed(vk_up){
sprite_index = spr_botao_connect_apagado;
global.selecaomulti = 1;
}

if keyboard_check_pressed(vk_down){
sprite_index = spr_botao_connect_ligado;
global.selecaomulti = 0;
}

if sprite_index = spr_botao_connect_ligado{
global.selecaomulti = 0;	
} else if sprite_index = spr_botao_connect_apagado{
global.selecaomulti = 1;	
}

if global.selecao == 0 and keyboard_check_pressed(ord("E")){
	room_goto(rm_client);
}

if global.selecao == 0 and keyboard_check_pressed(vk_enter){
	room_goto(rm_client);
}

if global.selecao == 0 and keyboard_check_pressed(vk_space){
	room_goto(rm_client);
}











