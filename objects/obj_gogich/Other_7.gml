	if a = 1
	{ 
		sprite_index = spr_gogich_stay
		if alarm[0] = -1 {alarm[0] = 60 * irandom_range(3,4);}
	}
	if a = 2
{ 
	if irandom_range(0,1)
		sprite_index = spr_gogich_active;
	else sprite_index = spr_gogich_seller;
		a=1;
	}




