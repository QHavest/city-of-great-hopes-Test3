if (a = 1)
{ 
	sprite_index = spr_Hostes
	if (global.dialog_end)
	{
		if (alarm[0] = -1) {alarm[0] = 60 * irandom_range(6,12);}
	}
}
if (a = 2)
{ 
	sprite_index = spr_Hostes_call1;
	audio_play_sound(snd_call,10,0,global.player_gain)
	a=1;
}




