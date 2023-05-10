//us botão
	//teclas
	if global.controllermode == 0
	{
		global.rightkey = keyboard_check(ord("D"));
		global.leftkey = keyboard_check(ord("A"));
		global.upkey = keyboard_check(ord("W"));
		global.downkey = keyboard_check(ord("S"));
	
		global.xaxisleft = global.rightkey - global.leftkey;
		global.yaxisleft = global.downkey - global.upkey;

		global.shootkey = mouse_check_button(mb_left);
		global.swapkeypressed = mouse_check_button_pressed(mb_right);

		global.startkeypressed = keyboard_check_pressed(vk_escape);
	}
	
	//controle gamepad
	if global.controllermode == 1
	{
		var _gamepad = 0;
		if gamepad_is_connected(_gamepad)
		{
		
		gamepad_set_axis_deadzone(_gamepad,.2);
		
		global.rightkey = gamepad_button_check(_gamepad, gp_padr);
		global.leftkey = gamepad_button_check(_gamepad, gp_padl);
		global.upkey = gamepad_button_check(_gamepad, gp_padu);
		global.downkey = gamepad_button_check(_gamepad, gp_padd);
		
		global.xaxisleft = gamepad_axis_value(_gamepad,gp_axislh) + (global.rightkey - global.leftkey);
		global.yaxisleft = gamepad_axis_value(_gamepad,gp_axislv) + (global.downkey - global.upkey);
		global.xaxisleft = clamp(global.xaxisleft,-1,1);
		global.yaxisleft = clamp(global.yaxisleft,-1,1);
		
		global.xaxisright = gamepad_axis_value(_gamepad, gp_axisrh);
		global.yaxisright = gamepad_axis_value(_gamepad, gp_axisrv);
		
		global.shootkey = gamepad_button_check(_gamepad, gp_shoulderrb);
		global.swapkeypressed = gamepad_button_check_pressed(_gamepad, gp_shoulderlb);

		global.startkeypressed = gamepad_button_check_pressed(_gamepad,gp_start);	
		}
	}











