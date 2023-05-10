 //profundidade
depth = -9999;
//fonte usada
global.font_main = Font1;
//variaveis para posição no inventário
option_pos = 0;
option_number = 0;
pos = 0;

//o construtor de itens

function create_item(_name, _desc, _spr, _candrop, _effect) constructor
    {
	name = _name;
	description = _desc;
	sprite = _spr;
	can_drop = _candrop;
	effect = _effect;
    }
	




//cria uma variavel que vai receber outras variaveis dentro sendo essas as configurações do item
global.item_list =
{
	
mushblue : new create_item
       (
         "Blue mushroom", 
         "A blue mushroom absorbs more mana than other mushrooms", 
          spr_mushblue,
		  true,
		  
		  function()
		  {
			  obj_player.mn += 10;
			  
			  //joga fora apos consumo
			  array_delete(inv, selected_item, 1);
		  }
       ),
			
goldencross : new create_item
         (
			"Golden cross",
			"A cross made of gold that must be worth a lot of money",
	         spr_cruzdeouro,
			 true,
			 
			  function()
		  {
			instance_create_depth(obj_player.x, obj_player.y, 0, obj_cruzdeouroativa)
			  cruzdeouropick=1;
			 //joga fora apos consumo
			  array_delete(inv, selected_item, 1);
			 
		  }
		 ),
		 runalenny : new create_item
       (
         "Runa do Lenny", 
         "A runa favorita do Lenny. (Único)", 
          spr_runalenny,
		  false,
		  
		  function()
		  {
			  
			  var _used = false;
			  
			 if instance_exists(obj_lenny)
			  {
				
				with(obj_lenny)
				 {
				  if distance_to_object(obj_player) < 20 and keyboard_check(ord("E")) {sprite_index=spr_lennycruna; _used = true;}
				 runalennypicked = 1;	 
				 }
			  }
			  
			 //joga fora apos consumo
			 if _used == true {array_delete(inv, selected_item, 1);}
			 
		  }
		  
       ),
	   chavedungeon : new create_item
       (
         "Chave da Masmorra", 
         "Uma chave que abre a porta da masmorra. (Único)", 
          spr_chave_dungeon,
		  false,
		  
		  function()
		  {
			  var _used = false;
			  chavedungeonpick = 1;
			 if instance_exists(obj_masmorra_portao)
			  {
				
				with(obj_masmorra_portao)
				 {
				  if distance_to_object(obj_player) < 20 {instance_destroy(obj_bloco2); sprite_index=spr_masmorra_portao_open _used = true;};	 
				chavedungeonpick = 1;
				}
			  }
			 //joga fora apos consumo
			 if _used == true {array_delete(inv, selected_item, 1);}
			 chavedungeonpick = 1;
		  }
		  ),
		  
		  
		   chavecreditos : new create_item
       (
         "Chave do quarto central", 
         "Uma chave que abre a porta do quarto central. (Único)", 
          spr_chave_creditos,
		  false,
		  
		  function()
		  {
			  var _used = false;
			 
			 if instance_exists(obj_portaroxa)
			  {
				
				with(obj_portaroxa)
				 {
				  if distance_to_object(obj_player) < 20 {instance_destroy(obj_bloco2) instance_destroy(obj_portaroxa) ; _used = true;};	 
				
				}
			  }
			 //joga fora apos consumo
			 if _used == true {array_delete(inv, selected_item, 1) chavecreditopick = 1;;}
			 
		  }
		  ),
		  
		  runagluz : new create_item
       (
         "Runa guia da luz", 
         "Faz surgir um brilho que mostra o caminho mais seguro. (Único)", 
          spr_runailumina,
		  false,
		  
		  function()
		  {
			 var _used = false;
			  
			 if room = interior_montanha
			  {
				instance_create_layer(447,245,"Instances",obj_brilhin);
				instance_create_layer(1316,671,"Instances",obj_brilhin);
				instance_create_layer(1253,400,"Instances",obj_brilhin);
				instance_create_layer(1215,101,"Instances",obj_brilhin);
				instance_create_layer(703,193,"Instances",obj_brilhin);
				runagluzpick = 1;
				_used = true;
			  }
			  
			  if room = interior_montanha2
			  {
				
				_used = true;
				
			  }
			  
			 //joga fora apos consumo
			 if _used == true {array_delete(inv, selected_item, 1);}
			 runagluzpick = 1;
			 
		  }
		  
       ),
}



//criando o inventario

inv = array_create(0);

inv_max = 1;
selected_item = -1;
		

//para desenhar e posicionar
sep = 16;
screen_bord = 16;

//largura de opções
op_length = 0;

//não gera o item se ele já foi pego em algum momento
cruzdeouropick = 0;
runalennypicked = 0;
chavedungeonpick = 0;
runagluzpick = 0;
chavecreditopick = 0;


		
