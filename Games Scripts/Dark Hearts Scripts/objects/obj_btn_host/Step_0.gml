if keyboard_check_pressed(vk_down){
sprite_index = spr_botao_host_apagado;
global.selecaomulti = 0;
}

if keyboard_check_pressed(vk_up){
sprite_index = spr_botao_host_ligado;
global.selecaomulti = 1;
}

if sprite_index = spr_botao_host_ligado{
global.selecaomulti = 1;	
} else if sprite_index = spr_botao_host_apagado{
global.selecaomulti = 0;	
}

if global.selecaomulti == 1 and keyboard_check_pressed(ord("E")){
	room_goto(rm_server);
}

if global.selecaomulti == 1 and keyboard_check_pressed(vk_enter){
	room_goto(rm_server);
}

if global.selecaomulti == 1 and keyboard_check_pressed(vk_space){
	room_goto(rm_server);
}












