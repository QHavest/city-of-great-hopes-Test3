if (a = 1)
{ 
	sprite_index = spr_Yana
	if (global.dialog_end)
	{
		if (alarm[0] = -1) {alarm[0] = 60 * irandom_range(5,9);}
	}
}
if (a = 2)
{ 
	sprite_index = spr_Yana_active;
	audio_play_sound(snd_call,10,0,global.player_gain);
	a=1;
}




