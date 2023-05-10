if distance_to_object(obj_player) <= 2 and global.dialogo == false and global.runalenny == true{
create_textbox(text_id);
global.lennysomiu = true;
}

if global.lennysomiu == true {instance_destroy(obj_passablock5)}

