// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_after_shop_anim_Krus(){

if lastmove = 0 sprite_index = spr_buy_Krus_bakery_R;
else sprite_index = spr_buy_Krus_bakery;
x = posX[0];
y = posY[0];
if (image_index >= image_number - 2){
	global.item_bought = false;
	state = PLAYERSTATE.FREE;
	status = STATUS.ACTIVE;
	}
}