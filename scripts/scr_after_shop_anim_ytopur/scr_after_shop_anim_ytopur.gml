/// @param GG_sprite_bying
/// @param seller_sprite
/// @param <seller_spr_breathe>
/// @param <seller_obj>
function scr_after_shop_anim_ytopur(GG_spr,sel_spr,sel_spr_def,sel_obj){
global.zaniatui = true;
if sel_spr=noone  
{
	if sprite_index!=GG_spr
	{
	// start GG animation
	image_index=0;
	sprite_index=GG_spr;
	}
}
	//check the end of seller animation - than start GG anim
else if sel_obj.sprite_index=sel_spr and scr_dim_animation_end(sel_spr,sel_obj.image_index)
	{
		sel_obj.image_index=0;
		sel_obj.sprite_index=sel_spr_def;
		image_index=0;
		sprite_index=GG_spr;
	}

// chek end GG animation
if sprite_index=GG_spr and scr_dim_animation_end(sprite_index) 
{
	global.zaniatui = false;
	with (obj_dim_player1){
state=PLAYERSTATE.FREE;
start=0;
in_place=0;
	status=STATUS.ACTIVE
	}
	with (obj_dim_player2){
state=PLAYERSTATE.FREE;
start=0;
in_place=0;
status=STATUS.PASSIVE
	}
	//global.dialogue_move = false;
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