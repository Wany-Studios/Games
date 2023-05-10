var _canx = camera_get_view_x(view_camera[0]);
var _cany = camera_get_view_y(view_camera[0]);

var _p0 = .5;
var _p1 = .25;

draw_sprite_tiled(spr_fog, 0,_canx*_p0, _cany*_p0);
draw_sprite_tiled(spr_fog, 1,_canx*_p1, _cany*_p1);



