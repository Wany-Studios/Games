



if distance_to_object(obj_player) < 0.7 and keyboard_check_pressed(ord("E")) and global.sentado = false{
if !instance_exists(obj_stou_sentado) and global.sentado = false {instance_create_layer(x,y,"Instances",obj_stou_sentado);
obj_player.x = 156;
obj_player.y = 164;
obj_player.face = DOWN;
global.sentado = true;}
}

if global.sentado == false{instance_destroy(obj_stou_sentado)}
if !instance_exists(obj_stou_sentado){global.sentado = false;}










