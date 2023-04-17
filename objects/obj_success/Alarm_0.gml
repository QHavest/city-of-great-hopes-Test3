obj_Battle_Interface.battle_start = false;

if (obj_Battle_Interface.battle_start == false and obj_Battle_Interface.game_over_mini == true)
	{	
		audio_play_sound(snd_victory_sound,5,false);
		scr_end_minigame();
	}
instance_destroy();
	
