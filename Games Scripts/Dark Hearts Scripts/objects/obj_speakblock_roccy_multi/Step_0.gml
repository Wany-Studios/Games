if distance_to_object(obj_player) <= 1.1 and keyboard_check_pressed(vk_space) 
and global.dialogo == false
{
create_textbox(text_id);
}

if global.comecarjogos = true{
text_id = "roccymulti"
}

if global.comecarjogos = false{
text_id = "roccymultioff"
}