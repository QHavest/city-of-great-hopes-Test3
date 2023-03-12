/// @description Insert description here
// You can write your code in this editor
if(a == 2)
{
	a = 1;
	sprite_index = spr_seller_zoo_active;	
	//obj_zoo_fox.visible=0;
}
else
{	//obj_zoo_fox.visible=1;
	sprite_index = spr_seller_zoo_stay;
	if alarm[0] = -1 {alarm[0] = 60 * irandom_range(6,10);}
}