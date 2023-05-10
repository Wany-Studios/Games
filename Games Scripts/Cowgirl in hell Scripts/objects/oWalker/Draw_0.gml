//desenha ele mesmo no lado certo
draw_sprite_ext(sprite_index,image_index,x,y,face,image_yscale,image_angle,image_blend,image_alpha);
//desenha o hp
var _healthpercent = hp/maxhp;
var _hpimage = _healthpercent*(sprite_get_number(sEnemyHealth)/1.61);
draw_sprite_ext(sEnemyHealth,_hpimage,x,y-sprite_height - 1,image_xscale,image_yscale,image_angle,image_blend,image_alpha);