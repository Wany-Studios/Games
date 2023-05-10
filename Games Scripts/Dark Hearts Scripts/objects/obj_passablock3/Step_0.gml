if distance_to_object(obj_player) <= 2 and global.dialogo == false {
create_textbox(text_id);
global.sonho = true;
}

if global.sonho == true {instance_destroy(obj_passablock3)}

