rot += 2;
for (var i = 0; i < sprite_get_number(spr_caixa_preta); i++){
 draw_sprite_ext(spr_caixa_preta, i, room_width/2 , room_height/2 - i,1,1, rot, c_white, 1);
}
