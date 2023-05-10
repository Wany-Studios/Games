for (var i = 0; i < sprite_get_number(spr_sprite_stacking); i++){
 draw_sprite_ext(spr_sprite_stacking, i, room_width/2, room_height/2 - i,1,1, point_direction(x,y,obj_player.x,obj_player.y) + 90, c_white, 1);
}


