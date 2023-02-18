with (obj_watermelon) {visible= true}
if a = 1
	{ 
		sprite_index = spr_seller_watermelon;
		if alarm[0] = -1 {alarm[0] = 60 * irandom_range(1,5);}
	}
	if a = 2
{ 
	if choose(0,1)
	{	sprite_index = spr_seller_watermelon_active;
		with (obj_watermelon) {visible= false}}
	else sprite_index = spr_seller_watermelon_kylak;
		a=1;
	}
	


