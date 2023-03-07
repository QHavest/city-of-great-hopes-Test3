// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_after_shop_anim_ytopur(GG_spr,sel_spr_def,sel_spr,sel_obj){

if sel_spr=noone
{
	// start GG animation
	image_index=0;
	sprite_index=GG_spr;
}
else
{
	//check the end of seller animation - than start GG anim
	if scr_dim_animation_end(sel_spr,sel_obj.image_index)
	{
		sel_obj.sprite_index=sel_spr_def;
		image_index=0;
		sprite_index=GG_spr;
	}
}
// chek end GG animation
if sprite_index=GG_spr and scr_dim_animation_end(sprite_index) 
{
state=PLAYERSTATE.FREE;
global.dialogue_move = false;
start=0;
in_place=0;
}
/*
if lastmove = 0 sprite_index = spr_buy_Ytopur_bakery_R;
else sprite_index = spr_buy_Ytopur_bakery;
x = posX[0];
y = posY[0];
if (image_index >= image_number - 2){
	global.item_bought = false;
	state = PLAYERSTATE.FREE;
	status = STATUS.ACTIVE;
	}
	*/
}