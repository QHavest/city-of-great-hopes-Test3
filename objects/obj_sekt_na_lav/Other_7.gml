	if a = 1
	{ 
		sprite_index = spr_sek_fam_1_F;
		if alarm[0] = -1 {alarm[0] = 60 * irandom_range(2,4);}
	}
	if a = 2
{ 
		sprite_index = spr_sek_fam_1_A;
		a=1;
	}
