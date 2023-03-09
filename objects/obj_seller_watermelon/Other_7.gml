if a = 1
	{ 
		sprite_index = spr_seller_watermelon;
		if alarm[0] = -1 {alarm[0] = 60 * irandom_range(3,8);}
	}
	if a = 2
{
	a=1;
	if irandom_range(0,1)
	{	sprite_index = spr_seller_watermelon_active;
		}
	else 
	{
		sprite_index = spr_seller_watermelon_kylak;
		with (obj_seller_melon)
		{
			sprite_index = spr_seller_melon_fuck;
		}
	}
	}
	


