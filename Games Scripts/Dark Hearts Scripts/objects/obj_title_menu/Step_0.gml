//colocando as entradas
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
accept_key = keyboard_check(ord ("E")) or keyboard_check(vk_space);

//aplica o numero de opções ao menu
op_length = array_length(option[menu_level]);

//movimentando as setas
pos += down_key - up_key;
if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length-1};

//usando as opções
if accept_key {
	
var _sml = menu_level;

switch(menu_level) {
	//pause menu
	case 0:
      switch(pos) {
      //start game
      case 0: instance_destroy(); break;
	  //multiplayer 
	  case 1: room_goto(rm_selecao_multiplayer); break;
      //quit game
      case 2: game_end(); break;
      
	  
}

break;

  
}
	
	//set position back
	if _sml != menu_level {pos = 0};
	
//conecta ao caminho
op_length = array_length(option[menu_level]);
	
}
