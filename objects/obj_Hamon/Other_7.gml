	if a = 1
	{ 
		sprite_index = spr_Hamon;
		if alarm[0] = -1 {alarm[0] = 60 * irandom_range(6,10);}
	}
	if a = 2
{ 
	//if irandom_range(0,1)
		sprite_index = spr_Hamon_active;
	//else sprite_index = spr_Patrylnui_active_2;
		a=1;
	}
	
