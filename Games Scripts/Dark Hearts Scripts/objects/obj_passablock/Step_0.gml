if distance_to_object(obj_player) <= 2 and global.dialogo == false {
create_textbox(text_id);
global.primeira_vez_cemiterio = true;
}

if global.primeira_vez_cemiterio == true {instance_destroy(obj_passablock)}

