audio_play_sound(snd_defeat_sound,5,false);
obj_krus_battle.image_index = 0;
obj_krus_battle.phasese_krus = PHASESE_KRUS.Defeat;
obj_Battle_Interface.mini_game = false;
death_gg++;
switch(global.LANGUAGE)
		{
			case "eng":
			instance_create_depth(466,570,-600,obj_gameover);
			break;
			case "ua":
			instance_create_depth(466,570,-600,obj_gameover).sprite_index = spr_gameoverUA;
			break;
		}
