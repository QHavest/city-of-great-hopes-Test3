if(a == 2)
{
	a = 1;
	sprite_index = spr_seller_banana_active ;
}
else
{
	sprite_index = spr_seller_banana_stay;
	if alarm[0] = -1 {alarm[0] = 60 * irandom_range(6,10);}
}