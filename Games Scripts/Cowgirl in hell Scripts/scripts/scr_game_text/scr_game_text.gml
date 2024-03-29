/// @parametro identificador de texto
function scr_game_text(_text_id){
	
switch(_text_id) {
	
	case "primeira história":
	scr_text("Já fazem 10 anos que eu estou nessa montanha.")
	scr_text("Durante a noite lembrei do dia em que eu entrei nessa montanha.");
	scr_text("O rosto do papai e da mamãe eu já não consigo mais lembrar...");
	scr_text("Pelo menos eu tive o Billy para me salvar aquele dia.");
	scr_text("Mas hoje finalmente é o dia em que vou sair daqui para tentar procurar meus pais.");
	scr_text("Espero que eles estejam bem.");
	scr_text("Pressione a tecla ENTER para começar o jogo", "narrador");
	
	break;
	
	case "última história":
	scr_text("Fim da primeira parte do jogo.")
	scr_text("Pressione a tecla ENTER para fechar o jogo", "narrador");
	
	break;
	
	//case identifica como caso ocorra a interação
	case "lenny":
	scr_text("Bom dia Lenny.", "player");
	scr_text("Bom dia pequenino.", "lenny", -1);
	scr_text("Como você está?", "lenny", -1);
	   scr_option("Estou animado.", "npc 1 - fine");
	   scr_option("Estou um pouco receoso", "npc 1 - not fine");
	   
	   case "teste":
	scr_text("Bah piah.");
	break;
	   
	break;
	   case "npc 1 - fine":
	     scr_text("Isso é bom.", "lenny");
		 break;
		  case "npc 1 - not fine":
	     scr_text("Não se preocupe, vai dar tudo certo.", "lenny");
		 break;
		 
		 //skins
		 case "skins":
	scr_text("Selecione a skin", "roupa");
	   scr_option("Red", "roupa1 - red");
	   scr_option("Yellow", "roupa1 - yellow");
	   scr_option("Clown", "roupa1 - clow");
	    scr_option("Demon", "roupa1 - demon");
	   scr_option("Default", "roupa1 - default");
	   
	   
	break;
	   case "roupa1 - red":
	   scr_text("Skin aplicada com sucesso.", "roupa");
	     obj_player.sprite[RIGHT] = spr_player_right_RED;
         obj_player.sprite[LEFT] = spr_player_left_RED;
         obj_player.sprite[UP] = spr_player_cima_RED;
         obj_player.sprite[DOWN] = spr_player_baixo_RED;

		 break;
		  case "roupa1 - yellow":
		  scr_text("Skin aplicada com sucesso.", "roupa");
	      obj_player.sprite[RIGHT] = spr_player_right_YELLOW;
          obj_player.sprite[LEFT] = spr_player_left_YELLOW;
          obj_player.sprite[UP] = spr_player_cima_YELLOW;
          obj_player.sprite[DOWN] = spr_player_baixo_YELLOW;
		 break;
		 
		 case "roupa1 - clow":
	   scr_text("Skin aplicada com sucesso.", "roupa");
	     obj_player.sprite[RIGHT] = spr_player_right_CLOW;
         obj_player.sprite[LEFT] = spr_player_left_CLOW;
         obj_player.sprite[UP] = spr_player_cima_CLOW;
         obj_player.sprite[DOWN] = spr_player_baixo_CLOW;
		 break;
		 
		  case "roupa1 - demon":
	   scr_text("Skin aplicada com sucesso.", "roupa");
	     obj_player.sprite[RIGHT] = spr_player_right_DEMON;
         obj_player.sprite[LEFT] = spr_player_left_DEMON;
         obj_player.sprite[UP] = spr_player_cima_DEMON;
         obj_player.sprite[DOWN] = spr_player_baixo_DEMON;
		 break;
		 
		 case "roupa1 - default":
		 scr_text("Skin aplicada com sucesso.", "roupa");
	      obj_player.sprite[RIGHT] = spr_player_right;
          obj_player.sprite[LEFT] = spr_player_left;
          obj_player.sprite[UP] = spr_player_cima;
          obj_player.sprite[DOWN] = spr_player_baixo;
		 break;
		 
		  case "allcolected":
	scr_text("Selecione a skin", "roupa");
	   scr_option("Red", "roupas1 - red");
	   scr_option("Yellow", "roupas1 - yellow");
	   scr_option("Clown", "roupas1 - clow");
	    scr_option("Demon", "roupas1 - demon");
	   scr_option("Default", "roupas1 - default");
	   
	   
	break;
	   case "roupas1 - red":
	   scr_text("Skin aplicada com sucesso.", "roupa");
	     obj_player_multiplayer.sprite[RIGHT] = spr_player_right_RED;
         obj_player_multiplayer.sprite[LEFT] = spr_player_left_RED;
         obj_player_multiplayer.sprite[UP] = spr_player_cima_RED;
         obj_player_multiplayer.sprite[DOWN] = spr_player_baixo_RED;

		 break;
		  case "roupas1 - yellow":
		  scr_text("Skin aplicada com sucesso.", "roupa");
	      obj_player_multiplayer.sprite[RIGHT] = spr_player_right_YELLOW;
          obj_player_multiplayer.sprite[LEFT] = spr_player_left_YELLOW;
          obj_player_multiplayer.sprite[UP] = spr_player_cima_YELLOW;
          obj_player_multiplayer.sprite[DOWN] = spr_player_baixo_YELLOW;
		 break;
		 
		 case "roupas1 - clow":
	   scr_text("Skin aplicada com sucesso.", "roupa");
	     obj_player_multiplayer.sprite[RIGHT] = spr_player_right_CLOW;
         obj_player_multiplayer.sprite[LEFT] = spr_player_left_CLOW;
         obj_player_multiplayer.sprite[UP] = spr_player_cima_CLOW;
         obj_player_multiplayer.sprite[DOWN] = spr_player_baixo_CLOW;
		 break;
		 
		  case "roupas1 - demon":
	   scr_text("Skin aplicada com sucesso.", "roupa");
	     obj_player_multiplayer.sprite[RIGHT] = spr_player_right_DEMON;
         obj_player_multiplayer.sprite[LEFT] = spr_player_left_DEMON;
         obj_player_multiplayer.sprite[UP] = spr_player_cima_DEMON;
         obj_player_multiplayer.sprite[DOWN] = spr_player_baixo_DEMON;
		 break;
		 
		 case "roupas1 - default":
		 scr_text("Skin aplicada com sucesso.", "roupa");
	      obj_player_multiplayer.sprite[RIGHT] = spr_player_right;
          obj_player_multiplayer.sprite[LEFT] = spr_player_left;
          obj_player_multiplayer.sprite[UP] = spr_player_cima;
          obj_player_multiplayer.sprite[DOWN] = spr_player_baixo;
		 break;
		 
		 case "redcolected":
	scr_text("Selecione a skin", "roupa");
	   scr_option("Red", "roupass1 - red");
	   scr_option("Default", "roupass1 - default");
	   
	   
	break;
	   case "roupass1 - red":
	   scr_text("Skin aplicada com sucesso.", "roupa");
	     obj_player_multiplayer.sprite[RIGHT] = spr_player_right_RED;
         obj_player_multiplayer.sprite[LEFT] = spr_player_left_RED;
         obj_player_multiplayer.sprite[UP] = spr_player_cima_RED;
         obj_player_multiplayer.sprite[DOWN] = spr_player_baixo_RED;
		 break;
		 
		  case "roupass1 - default":
		 scr_text("Skin aplicada com sucesso.", "roupa");
	      obj_player_multiplayer.sprite[RIGHT] = spr_player_right;
          obj_player_multiplayer.sprite[LEFT] = spr_player_left;
          obj_player_multiplayer.sprite[UP] = spr_player_cima;
          obj_player_multiplayer.sprite[DOWN] = spr_player_baixo;
		 break;
		 
		  case "yellowcolected":
	scr_text("Selecione a skin", "roupa");
	   scr_option("Yellow", "roupasss1 - yellow");
	   scr_option("Default", "roupasss1 - default");
	   
	   
	break;
	   case "roupasss1 - yellow":
	   scr_text("Skin aplicada com sucesso.", "roupa");
	     obj_player_multiplayer.sprite[RIGHT] = spr_player_right_YELLOW;
         obj_player_multiplayer.sprite[LEFT] = spr_player_left_YELLOW;
         obj_player_multiplayer.sprite[UP] = spr_player_cima_YELLOW;
         obj_player_multiplayer.sprite[DOWN] = spr_player_baixo_YELLOW;
		 break;
		 
		  case "roupasss1 - default":
		 scr_text("Skin aplicada com sucesso.", "roupa");
	      obj_player_multiplayer.sprite[RIGHT] = spr_player_right;
          obj_player_multiplayer.sprite[LEFT] = spr_player_left;
          obj_player_multiplayer.sprite[UP] = spr_player_cima;
          obj_player_multiplayer.sprite[DOWN] = spr_player_baixo;
		 break;
		 
		  case "manequim1":
	scr_text("Deseja obter essa skin?", "roccy", -1);
	   scr_option("Sim", "manequim1 - sim");
	   scr_option("Não", "manequim1 - nao");
	   
	break;
		 
		 case "roccymulti":
	   scr_text("Olá, sou a IA nomeada de Roccy.", "roccy", -1);
	   scr_text("Atualmente sou responsável pelo gerenciamento do mercado de acessórios.", "roccy", -1);
	   scr_text("A conexão se econtra eficiciente e o endereço de IP é:", "roccy", -1);
	   scr_text("172.16.0.213", "roccy", -1);
		 break;
		 
		 case "roccymultioff":
	   scr_text("Olá, sou a IA nomeada de Roccy.", "roccy", -1);
	   scr_text("Atulmente não existe nenhuma conexão.", "roccy", -1);
	   scr_text("Por favor, se ligue a uma rede.", "roccy", -1);
	   
		 break;
		 
		 case "Galen1":
	scr_text("Meditando novamente galen?", "player");
	scr_text("Bom... Algúem precisa fazer isso.", "galen", -1);
	scr_text("O que veio fazer no cemitério?", "galen", -1);
	   scr_option("Vim buscar a runa do Lenny.", "galen - runa");
	   scr_option("Queria ver como você está.", "galen - preocupa");
	   
	break;
	   case "galen - runa":
	     scr_text("Ele a deixou na masmorra, vai precisar da chave que está na casa.", "galen");
		 break;
		  case "galen - preocupa":
	     scr_text("Obrigado pela preocupação meu pequeno, estou muito bem!", "galen");
		 break;
		 
		 case "lenny2":
	scr_text("Lenny você está cobrindo a entrada da caverna.", "player");
	scr_text("Desculpe você não pode passar.", "lenny", -1);
	scr_text("Poderia me dizer o motivo?", "player");
	scr_text("Eu perdi a minha runa, se você achar ela para mim eu te deixo passar.", "lenny", -1);
	scr_text("Onde você perdeu ela?", "player");
	scr_text("Está no último andar da masmorra.", "lenny", -1);
	scr_text("Tudo bem, irei procurar sua runa.", "player");
		 break;
		 
		 case "zolin1":
	scr_text("Desculpa te acordar Zolin.", "player");
	scr_text("Sempre estou acordado criança.", "zolin", -1);
	scr_text("Isso é mentira, você estava dormindo agora pouco.", "player");
	scr_text("Sabe como é... eu durmo de olhos abertos.", "zolin", -1);
	scr_text("Acho que você quis dizer olho aberto certo?", "player");
	scr_text("São olhos mesmo, afinal eu vejo tudo que acontece nessa casa.", "zolin", -1);
	scr_text("Isso me assusta um pouco.", "player");
		 break;
		 
		 case "billy":
	scr_text("Billy você poderia me ajudar a procurar onde está a runa do Lenny?", "player");
	scr_text("Lamento, estou ocupado agora.", "billy", -1);
	scr_text("Mas você sempre está ocupado...", "player");
	scr_text("Outra hora eu procuro com você.", "billy", -1);
	   scr_option("Você sempre fala isso...", "billy - nao");
	   scr_option("Tudo bem Billy...", "billy - sim");
	break;
	   case "billy - nao":
	     scr_text("Procure sozinho então.", "billy");
		 break;
		  case "billy - sim":
	     scr_text("Fico feliz que tenha entendido.", "billy");
		 break;
		 
		 case "roccy1":
	scr_text("Olá pequenino, como posso lhe ajudar hoje?", "roccy", -1);
	scr_text("Quem é você? eu nunca te vi por aqui...", "player");
	scr_text("Sou um negociador que vaga por entre os lugares, achei esse local muito interessante", "roccy", -1);
	scr_text("Estaria afim de jogar um jogo?", "roccy", -1);
	   scr_option("Sim", "roccy - sim");
	   scr_option("Não", "roccy - nao");
	break;
	   case "roccy - sim":
	     scr_text("Excelente! Vamos começar.", "roccy");
		 global.comecarjogos = true;
		 break;
		  case "roccy - nao":
	     scr_text("Acho que você não tem muita escolha pequeno.", "roccy");
		 global.comecarjogos = true;
		 break;
	   
	
	case "estatua":
	scr_text("Monumento do grande héroi que derrotou os deuses malignos.")
	scr_text("Se ele soubesse quanta coisa ruim aconteceu depois...", "player");
	break;
	
	case "runas de purificacao":
	scr_text("palavras para purificação.")
	break;
	
	case "tumulo1":
	scr_text("adorava leite.")
	break;
	
	case "Athos":
	scr_text("Você completou a primeira parte do jogo, a parte dois vai sair ano que vem!", "athos")
	break;
	
	case "Athos2":
	scr_text("Olá! eu sou Huotes, espero que tenha gostado da proposta apresentada nesse meu projeto!", "athos2")
	scr_text("Em breve sairá a parte 2, até lá peço um pouco de paciência.", "athos2")
	break;
	
	case "MathTurtle":
	scr_text("Salve! Sou MathTurtle, sou o responsável por desenhar os personagens e as vegetações do jogo.", "turtle")
	scr_text("Consulte mais sobre o meu trabalho pelo @turtle_pixels.", "turtle")
	break;
	
	case "CatLuke":
	scr_text("Certos sprites e tilesets foram adquiridos por terceiros sendo: ", "Catluke")
	scr_text("@ansimuz, @GuttyKreum, @AssetBakery, @cg_alexander e @Pixel_poem. ", "Catluke")
	scr_text("@franuka_art, @pixel-boy, dentre outros. ", "Catluke")
	scr_text("Graças ao trabalho de vocês pude dar vida a fantasia.", "Catluke")
	break;
	
	case "well":
	scr_text("O poço tem água, mas está impura.")
	break;
	
	case "Zolin":
	scr_text("Você acordou Zolin.")
	break;
	
	case "janela maldita":
	scr_text("Você se sente constantemente observado... mas não tem mais ninguém aqui.")
	break;
	
	case "cama":
	scr_text("É apenas a boa e velha cama.")
	break;
	
	case "urso":
	scr_text("Sua única verdadeira companhia que realmente te entende...")
	scr_text("Obrigado por ser um bom ouvinte meu pequeno.", "player");
	break;
	
	case "primeira cemiterio":
	scr_text("A magia escura que paira sobre o cemiterio ficou mais forte nos ultimos dias...")
	scr_text("Esse lugar fica mais macabro a cada dia que passa.", "player");
	break;
	
	case "esqueleto de crystal":
	scr_text("A magia desse lugar entorpece a mente e distorce a noção de tempo...")
	scr_text("Esse esqueleto já está a tanto tempo nessa caverna que a magia cristalizou o mesmo.") 
	scr_text("Isso é bom para me lembrar o quão ruim é ficar perdido nesse lugar.", "player");
	break;
	
	case "crypta":
	scr_text("As tumbas nesse lugar emitem luz mesmo em meio a escuridão.")
	scr_text("Mesmo depois de tanto tempo esse lugar ainda me dá muito medo.", "player");
	break;
	
	case "lennysomiu":
	scr_text("Acho que o pessoal deve ter voltado para a casa escura.", "player");
	break;
	
	case "sonho":
	scr_text("De novo esse mesmo sonho de quando cheguei aqui...", "player");
	scr_text("Seria isso um presságio de algo ruim?", "player");
	break;
	
	case "pilar":
	scr_text("Você deu de cara em um pilar.",);
	
	break;
	case "billyruna":
	scr_text("A runa favorita do Billy.",);
	
	break;
	
	case "ilumina":
	scr_text("Qual era o nome do feitiço mesmo?", "player");
	scr_text("Seria... brilhium?", "player");
	scr_text("...");
	scr_text("Talvez... lightium?", "player");
	scr_text("...");
	scr_text("Ah sim... ILUMINION!", "player");
	break;
	
	case "lennyruna":
	scr_text("Aqui está a sua runa lenny.", "player");
	scr_text("Obrigado meu pequeno.", "lenny", -1);
	scr_text("Você está bem Lenny?", "player");
	scr_text("Sim, só estou um pouco triste que você vai partir.", "lenny", -1);
	scr_text("Lenny... eu não posso mais ficar aqui...", "player");
	scr_text("Está tudo bem, eu entendo que você precisa partir.", "lenny", -1);
	scr_text("Prometo retornar para buscar você e o Billy um dia Lenny.", "player");
		 break;
		 
		 case "billycasa":
	scr_text("Acho que enfim chegou o dia Billy.", "player");
	scr_text("Sim, gostaria de ter passado mais tempo com você, Peço desculpas por estar sempre ocupado.", "billy", -1);
	scr_text("Está tudo bem Billy, sei que no fundo você fazia de tudo para me proteger.", "player");
	scr_text("Seja corajoso ao sair daqui, você vai precisar.", "billy", -1);
	scr_text("Prometo que vou ser!", "player");
	scr_text("Lembre-se dos feitiços que eu te ensinei e de como preparar runas.", "lenny", -1);
	scr_text("Você sabe que eu já domino isso Lenny.", "player");
	scr_text("Então o que está esperando para partir?", "billy", -1);
		 break;
		 
		 case "tudopreto":
	scr_text("Se eu me lembro bem, havia uma escotilha que levava para a masmorra.", "player");
	break;
	
	case "galen2":
	scr_text("Obrigado por tudo que você já fez por mim Galen.", "player");
	scr_text("Fico feliz em ver como você cresceu, é uma pena que vá partir...", "galen", -1);
	scr_text("Irei sentir sua falta meu pequeno herói.", "galen", -1);
	scr_text("Prometo voltar um dia.", "player");
	
	
	break;
	
	case "lennycombate":
	scr_text("Entre na montanha pequeno! não vou conseguir para-los por muito tempo.", "lenny", -1);
	
	break;
	
	   
	   
	
	
   }
	

}