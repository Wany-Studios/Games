if keyboard_check_pressed(vk_down){
sprite_index = singleplayer_off;
global.selecao = 0;
}

if keyboard_check_pressed(vk_up){
sprite_index = singleplayer_on;
global.selecao = 1;
}

if sprite_index = singleplayer_on{
global.selecao = 1;	
} else if sprite_index = singleplayer_off{
global.selecao = 0;	
}

if global.selecao == 1 and keyboard_check_pressed(ord("E")){
	room_goto(rm_primeira_historia);
}

if global.selecao == 1 and keyboard_check_pressed(vk_enter){
	room_goto(rm_primeira_historia);
}

if global.selecao == 1 and keyboard_check_pressed(vk_space){
	room_goto(rm_primeira_historia);
}








