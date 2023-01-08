	if a = 1
	{ 
		sprite_index = spr_babka_5;
		if alarm[0] = -1 {alarm[0] = 60 * irandom_range(2,6);}
	}
	if a = 2
{ 
		sprite_index = spr_babka_5_active;
		a=1;
	}
