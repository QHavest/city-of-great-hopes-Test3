	if a = 1
	{ 
		sprite_index = spr_Aperkot;
		if alarm[0] = -1 {alarm[0] = 60 * irandom_range(6,10);}
		obj_punchball_box.image_index=1;
	}
	if a = 2
{ 
		sprite_index = spr_Aperkot_grusha;
		with obj_punchball_box {
		image_index=2;
		}
		a=1;
	}
	


