// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_anim_start(spr_buy,obj_sel,spr_sel_def,spr_sel){
	if obj_dim_player1.last_active
	{
		with(obj_dim_player1){
		state=PLAYERSTATE.BUY;
		seller_spr_default=spr_sel_def;
		seller_spr=spr_sel;
		seller_obj=obj_sel;
		buing_spr = spr_buy;
}
	}
if obj_dim_player2.last_active
	{
		with(obj_dim_player2)
		{
		state=PLAYERSTATE.BUY;
		seller_spr_default=spr_sel_def;
		seller_spr=spr_sel;
		seller_obj=obj_sel;
		buing_spr = spr_buy;
}
}
		obj_sel.image_index=0;
		obj_sel.sprite_index=spr_sel;
}