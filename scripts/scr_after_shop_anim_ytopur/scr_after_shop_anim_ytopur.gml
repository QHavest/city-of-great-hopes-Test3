// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_after_shop_anim_ytopur(){

sprite_index = spr_buy_Ytopur_bakery;
x = obj_dim_player1;
y = obj_dim_player1;
if (image_index >= image_number - 1){
	global.item_bought = false;
	state = PLAYERSTATE.FREE;
	status = STATUS.ACTIVE;
	}
}