depth = -bbox_bottom;
if room= rm_dreamland{sprite_index = spr_lennycombate}
if sprite_index=spr_lennycruna{global.lennycapedra = true}
if global.lennycapedra == true {sprite_index=spr_lennycruna}

spell_1_cd--;

if instance_exists(obj_parenemy) and room != interior_montanha2 {
if spell_1_cd <= 0{
var _enemy = instance_nearest(x,y,obj_parenemy)
var _inst = instance_create_layer(x,y-8,"Instances", obj_spell)
_inst.speed = 2;
_inst.direction = point_direction(x,y,_enemy.x,_enemy.y)
 
 spell_1_cd = spell_1_timer;
 
}}
