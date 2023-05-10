if surface_exists(sombra_surface){
	surface_set_target(sombra_surface);
	
	draw_set_color(c_black);
	draw_set_alpha(1);
	draw_rectangle(0,0,room_width,room_height,false);
	draw_set_alpha(1);
	draw_set_color(c_white);
	
	gpu_set_blendmode(bm_subtract);
	
	gpu_set_blendmode(bm_normal);
	
	
	surface_reset_target();
}else{
	sombra_surface = surface_create(room_width, room_height);
}

draw_surface(sombra_surface,0,0);

if !instance_exists(obj_passablock4) and !instance_exists(obj_textbox) {instance_destroy()}