//desenha a arma
function draw_my_weapon(){
//desenha a arma
		//coloca a arma de maneira mais apropriada ao jogador
		var _xoffset = lengthdir_x(weaponoffsetdist,aimdir);
		var _yoffset = lengthdir_y(weaponoffsetdist,aimdir);
	//vira a arma
	var _weaponyslc = 1;
	if aimdir > 90 and aimdir < 270{
	 _weaponyslc = -1;	
	}

	draw_sprite_ext(weapon.sprite,0,x + _xoffset,centery + _yoffset,1,_weaponyslc,aimdir,c_white,image_alpha);

}
	
	//efeitos visuais
	function screen_pause(){
	
		//pausa e para
		if instance_exists(oScreenPause)
		{
		image_speed = 0;
		return true;
		}else{image_speed = 1; return false;}
			
		}
		
	function create_screen_pause(_time = 3){
		
			//pause de tela
		with(instance_create_depth(0,0,0,oScreenPauseTimed))
		{
			timer = _time;
		}
		
	}
		
	function screen_shake(_amount = 4){
		
		//quando tiver um menu, controlar o balanço de camera
		//_amount *= global.screenshakeamount;
		
		with(oCamera)
		{
			xshakeamount = _amount;
			yshakeamount = _amount;
		}
		
	}
	
	//calculação de dano
	//evento de criação de dano
	function get_damage_create(_hp = 10, _iframes = false){
	
	maxhp = _hp;
	hp = _hp;
	
	//setando o iframe
	if _iframes == true{
		
		iframetimer = 0;
		iframenumber = 90;
		
	}
	
	//cria a lista de dano
	if _iframes == false{damagelist = ds_list_create();}
	}
		
	//evento de limpeza de dano
	function get_damaged_cleanup(){
	//deleta o dano da estrutura para liberar memoria
	ds_list_destroy(damagelist);	
	}


	//dano no evento de step
	function get_damaged(_damageobj, _iframes = false){
		
		//saida especial dos iframes
		if _iframes == true and iframetimer > 0 {
		iframetimer--;
		if iframetimer mod 5 == 0{
		if image_alpha == 1{image_alpha = 0;}else{image_alpha=1;}
		}
			
		//sai do retorno se a função entende como falso
		return false;
		}
		
		//da a certeza que o boneco vai ficar visivel depois de ficar piscando igual sua mãe no cio 
		if _iframes == true{image_alpha = 1;}
		
				//tomando dano
			var _hitconfirm = false;
			if place_meeting(x,y,_damageobj) or (_damageobj != oDamageParent and place_meeting(x,y,oDamageAll)){
	
				//dando uma lista de instancias de dano
				var _instlist = ds_list_create();
				instance_place_list(x,y,_damageobj,_instlist,false);
				if _damageobj != oDamageParent
				{
					instance_place_list(x,y,oDamageAll,_instlist,false);
				}
				
				//tamanho dessa lista
				var _listsize = ds_list_size(_instlist);
	
				//loop entre itens da lista
				
				for (var i = 0; i < _listsize; i++)
				{
	
						//pega o dano da instancia do objeto e identifica o mesmo
						var _inst = ds_list_find_value(_instlist,i);
	
						//checa se a instancia já existe contando dano
						if _iframes == true or ds_list_find_index(damagelist,_inst) == -1
						{	
						//adiciona a nova instancia de dano a lista
						if _iframes == false {ds_list_add(damagelist,_inst);}
						
						//toma dano de instancias em especificas
						hp -= _inst.damage
						_hitconfirm = true;
						
						//fala o dano que tomou caso haja impacto
						_inst.hitconfirm = true;
						}
				}
				
				//seta os iframes de novo eu estou morrendo não aguento mais programaaaaar
				if _iframes == true and _hitconfirm == true {
					iframetimer = iframenumber;
				}
	
				//libera memória por destruir os itens da lista
				ds_list_destroy(_instlist);
	
	
			}

			//limpa a lista de dano dos objetos caso não exista mais nada tocando os mesmos
			if _iframes == false{
			var _damagelistsize = ds_list_size(damagelist);
			for(var i = 0; i < _damagelistsize; i++)
			{
				//se não está mais tocando nada então... remove da lista e retorna o loop para 1
				var _inst = ds_list_find_value(damagelist,i);
				if !instance_exists(_inst) or !place_meeting(x,y,_inst)
				{
					ds_list_delete(damagelist,i);
					i--;
					_damagelistsize--;
				}
			}
			}
		
			
		//retorna a confirmação de dano
		return _hitconfirm;
	
	
	}
		
	