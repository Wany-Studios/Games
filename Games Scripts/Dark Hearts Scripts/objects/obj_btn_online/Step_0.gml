if keyboard_check_pressed(vk_up){
sprite_index = multiplayer_off;
global.selecao = 1;
}

if keyboard_check_pressed(vk_down){
sprite_index = multiplayer_on;
global.selecao = 0;
}

if sprite_index = multiplayer_on{
global.selecao = 0;	
} else if sprite_index = multiplayer_off{
global.selecao = 1;	
}

if global.selecao == 0 and keyboard_check_pressed(ord("E")){
	room_goto(rm_selecao_multiplayer);
}

if global.selecao == 0 and keyboard_check_pressed(vk_enter){
	room_goto(rm_selecao_multiplayer);
}

if global.selecao == 0 and keyboard_check_pressed(vk_space){
	room_goto(rm_selecao_multiplayer);
}












