if distance_to_object(obj_player) < 1 and global.zolinapresenta = false {
image_speed = 1;

if scr_fim_animacao(){
	sprite_index = estante_com_olhin_open;
}

}

if global.zolinapresenta = true{sprite_index = estante_com_olhin_open;}

if sprite_index = estante_com_olhin_open and global.zolinapresenta = false{
instance_create_layer(x,y,"Instances",obj_speakblock_zolin);	
global.zolinapresenta = true;
}

if !instance_exists(obj_speakblock_zolin) and global.zolinapresenta = true{
instance_create_layer(x,y,"Instances",obj_speakblock_zolin2);	
global.zolinconversa = true;
}

if instance_exists(obj_textbox){
instance_destroy(obj_speakblock_zolin);}

if global.zolinconversa = true and instance_exists(obj_textbox) {
instance_destroy(obj_speakblock_zolin2);	
}







