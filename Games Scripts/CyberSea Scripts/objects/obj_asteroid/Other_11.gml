/// @description Take Damage
score += 10;
if distance_to_object(obj_ship) >= 100 {audio_play_sound(snd_asteroid_destroy_2,8,false);}
if distance_to_object(obj_ship) <= 99{audio_play_sound(snd_asteroid_destroy,8,false);}
instance_destroy();

	
	if sprite_index == spr_asteroid_huge{
		repeat(2){
			var new_asteroid = instance_create_layer(x,y,"Instances",obj_asteroid);
			new_asteroid.sprite_index = spr_asteroid_med;
			
		}
	}else if sprite_index == spr_asteroid_med{
		repeat(2){
			var new_asteroid = instance_create_layer(x,y,"Instances",obj_asteroid);
			new_asteroid.sprite_index = spr_asteroid_small;
			
		}
	}
	
	repeat(10){
	instance_create_layer(x,y,"Instances",obj_debris);	
	}
	


