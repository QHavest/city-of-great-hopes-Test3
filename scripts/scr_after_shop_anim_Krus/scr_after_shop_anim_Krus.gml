// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_after_shop_anim_Krus(){

sprite_index = spr_buy_Krus_bakery;
if (image_index >= image_number - 1){
	global.item_bought = false;
	state = PLAYERSTATE.FREE;
	status = STATUS.ACTIVE;
	}
}