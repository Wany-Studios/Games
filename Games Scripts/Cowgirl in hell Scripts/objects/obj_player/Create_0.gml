	//setup de dano
	get_damage_create(20, true);
	
	//movimentações
	movedir = 0;
	movespd = 2;
	xspd = 0;
	yspd = 0;
	
	
	
	//controle dos sprites
	centeryoffset = -5;
	centery = y + centeryoffset;
	weaponoffsetdist = 1;
	aimdir = 0;

	face = 3;
	sprite[0] = sPlayerRight;
	sprite[1] = sPlayerUp;
	sprite[2] = sPlayerLeft;
	sprite[3] = sPlayerDown;
	
	//controle de armas
	shoottimer = 0;
	
	//adiciona o inventário
	array_push(global.playerweapons,global.weaponlist.pinkrod,);

	selectedweapon = 0;
	
	weapon = global.playerweapons[selectedweapon];









