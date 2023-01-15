/// @description Insert description here
// You can write your code in this editor
	if a = 1
	{ 
		sprite_index = spr_cherka_stay
		if alarm[0] = -1 {alarm[0] = 60 * irandom_range(3,4);}
	}
	if a = 2
{ 
	if irandom_range(0,1)
		sprite_index = spr_cherka_stay_L;
	else sprite_index = spr_cherka_stay_R;
		a=1;
	}




