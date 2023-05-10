if !instance_exists(obj_textbox){
if distance_to_object(obj_player) <= .80 and global.dialogo == false {
create_textbox(text_id); 
instance_destroy();
}}


