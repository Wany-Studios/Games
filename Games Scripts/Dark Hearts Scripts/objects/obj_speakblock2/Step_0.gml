if distance_to_object(obj_player) <= 1.3 and keyboard_check_pressed(vk_space)
and global.dialogo == false and !instance_exists(obj_speakblock) and !instance_exists(obj_textbox)
{
create_textbox(text_id);
}
