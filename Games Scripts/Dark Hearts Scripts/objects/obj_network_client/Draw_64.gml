draw_set_color(c_white)
draw_text_ext(25,25,"Client",1,50);

n = 0
for (i = ds_map_find_first(ds_jogadores); !is_undefined(i); i = ds_map_find_next(ds_jogadores,i)){
n++
var inst = ds_jogadores[? i]
draw_text(50,50*n,string(inst.sockk))
}










