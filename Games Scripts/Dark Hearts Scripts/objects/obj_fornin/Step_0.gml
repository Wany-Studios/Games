if distance_to_object(obj_player) <= 1 and keyboard_check_pressed(ord("E")) and global.fornoaberto == false{
sprite_index = forno_open;	
global.fornoaberto = true;
}
if distance_to_object(obj_player) <= 1 and keyboard_check_pressed(ord("E")) and global.fornoaberto == true{
sprite_index = fornin_fechado;	
global.fornoaberto = false;
}

