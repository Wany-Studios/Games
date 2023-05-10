if distance_to_object(obj_player_multiplayer) <= 1.0 and keyboard_check_pressed(vk_space) 
and global.dialogo == false
{
create_textbox(text_id);
}
