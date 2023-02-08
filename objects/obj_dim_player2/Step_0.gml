//якщо магазин відкритий, гравець нерухомий
if (global.shop or !global.dialog_end or global.map) {
	if lastmove = 0 sprite_index = asset_get_index("spr_dim_" + sprit + "_stay_r");
	else sprite_index = asset_get_index("spr_dim_" + sprit + "_stay_l");
	if (audio_is_playing(s_walk)) audio_stop_sound(s_walk);
	if (audio_is_playing(snd_run)) audio_stop_sound(snd_run);
}

//система зміни статусу гравця

if(keyboard_check(ord("1"))) status = STATUS.PASSIVE;
if(keyboard_check(ord("2"))) status = STATUS.ACTIVE;


switch(status){
	case STATUS.ACTIVE : scr_play_player()   ; break;
	case STATUS.PASSIVE: scr_passive_player(); break;
}

if (global.item_bought = true and status = STATUS.ACTIVE and global.shop = false){
image_index = 0;
state = PLAYERSTATE.BUY;
status = STATUS.PASSIVE;
}

switch(state){
case	PLAYERSTATE.FREE	: scr_dim_playerstate_free_krus();    break;
case	PLAYERSTATE.BUY		: scr_after_shop_anim_Krus();		break;
 } 


if (x!= xprevious or y!= yprevious){
	for(var i = array_size-1; i > 0; i--){
		posX[i] = posX[i-1];
		posY[i] = posY[i-1];
		if status = STATUS.ACTIVE audio_listener_set_position(0,x,y,0);
	}	
	posX[0] = x;
	posY[0] = y;
}
