if surface_exists(sombra_surface){
	surface_set_target(sombra_surface);
	
	draw_set_color(c_black);
	draw_set_alpha(.9);
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
	
	if instance_exists(obj_brilhin){
	var _num = instance_number(obj_brilhin);
	
	for (var i = 0; i < _num; i++){
	var _inst = instance_find(obj_brilhin, i);	
	
	draw_set_alpha(.9);
	draw_circle(_inst.x, _inst.y, 12 + irandom(1), false);
	draw_set_alpha(.5);
	draw_circle(_inst.x, _inst.y, 18 + irandom(1), false);
	draw_set_alpha(1);
	}
	}
	
	
	if instance_exists(obj_esqueleto_crystal){
	var _num2 = instance_number(obj_esqueleto_crystal);
	
	for (var i2 = 0; i2 < _num2; i2++){
	var _inst2 = instance_find(obj_esqueleto_crystal, i2);	
	
	draw_set_alpha(.9);
	draw_circle(_inst2.x, _inst2.y, 24 + irandom(1), false);
	draw_set_alpha(.5);
	draw_circle(_inst2.x, _inst2.y, 32 + irandom(1), false);
	draw_set_alpha(1);
	}
	}
	
	gpu_set_blendmode(bm_normal);
	
	
	surface_reset_target();
}else{
	sombra_surface = surface_create(room_width, room_height);
}

draw_surface(sombra_surface,0,0);