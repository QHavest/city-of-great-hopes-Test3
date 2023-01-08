	if a = 1
	{ 
		sprite_index = spr_seller_bazar_2;
		if alarm[0] = -1 {alarm[0] = 60 * irandom_range(6,10);}
	}
	if a = 2 
{ 
		sprite_index = spr_seller_bazar_2_active;
		a=1;
	}