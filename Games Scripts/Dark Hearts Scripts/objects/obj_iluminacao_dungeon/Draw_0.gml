if surface_exists(sombra_surface){
	surface_set_target(sombra_surface);
	
	draw_set_color(c_black);
	draw_set_alpha(.7);
	draw_rectangle(0,0,room_width,room_height,false);
	draw_set_alpha(1);
	draw_set_color(c_white);
	
	gpu_set_blendmode(bm_subtract);
	
	if instance_exists(obj_tocha){
	var _num = instance_number(obj_tocha);
	
	for (var i = 0; i < _num; i++){
	var _inst = instance_find(obj_tocha, i);	
	
	draw_set_alpha(.9);
	draw_circle(_inst.x, _inst.y, 24 + irandom(1), false);
	draw_set_alpha(.5);
	draw_circle(_inst.x, _inst.y, 32 + irandom(1), false);
	draw_set_alpha(1);
	}
	}
	
	
	if instance_exists(obj_tocha_lateral){
	var _num = instance_number(obj_tocha_lateral);
	
	for (var i = 0; i < _num; i++){
	var _inst = instance_find(obj_tocha_lateral, i);	
	
	draw_set_alpha(.9);
	draw_circle(_inst.x, _inst.y, 24 + irandom(1), false);
	draw_set_alpha(.5);
	draw_circle(_inst.x, _inst.y, 32 + irandom(1), false);
	draw_set_alpha(1);
	}
	}
	
	gpu_set_blendmode(bm_normal);
	
	
	surface_reset_target();
}else{
	sombra_surface = surface_create(room_width, room_height);
}

draw_surface(sombra_surface,0,0);