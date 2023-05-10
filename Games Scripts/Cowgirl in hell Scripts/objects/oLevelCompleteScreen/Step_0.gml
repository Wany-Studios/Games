//da a entrada ao botao de tiro
shootkey = global.shootkey;

//fade in
alpha += alphaspd;
alpha = clamp(alpha,0,1);

//restart
if shootkey and alpha >= 1
{
 room_goto_next();	
}









