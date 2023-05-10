//a fonte a ser usada
draw_set_font(global.font_main);

//a posição dos desenhos do inventário
for (var i = 0; i < array_length(inv); i++)
   {
	   var _xx =  camera_get_view_x(view_camera[0]) + screen_bord;
	   var _yy =  camera_get_view_y(view_camera[0]) + screen_bord;
	   var _sep = sep;
	   var _col = c_white;
	   
	   //icone
      draw_sprite(inv[i].sprite, 0, _xx, _yy + _sep*i);

      //caso selecionado muda de cor
	  if selected_item == i { _col = c_yellow; };
	  draw_set_color(_col);
	  
	  //nome do item
      draw_text(_xx + 16, _yy + _sep*i, inv[i].name );
	  
	  //descrição
	  if selected_item == i
	  {
	  draw_text_ext( _xx, _yy + _sep*array_length(inv), inv[i].description, 12, 80);
	  }
	  //reseta a cor para o branco
	  draw_set_color(c_white);
   }
 
