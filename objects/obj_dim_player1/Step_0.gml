//якщо магазин або діалог відкритий, гравець нерухомий
// 
if (global.shop or !global.dialog_end or global.map) {
	if lastmove =0 sprite_index = asset_get_index("spr_dim_" + sprit + "_stay_r");
	else sprite_index = asset_get_index("spr_dim_" + sprit + "_stay_l");
	if (audio_is_playing(s_walk)) audio_stop_sound(s_walk);
	if (audio_is_playing(snd_run)) audio_stop_sound(snd_run);
	exit;
}
//система зміни статусу гравця
if(keyboard_check(ord("1"))) status = STATUS.ACTIVE;
if(keyboard_check(ord("2"))) status = STATUS.PASSIVE;

switch(status){
	case STATUS.ACTIVE : scr_play_player()   ; break;
	case STATUS.PASSIVE: scr_passive_player(); break;
}


 switch(state){
 case	PLAYERSTATE.FREE	 : scr_dim_playerstate_free_ytopurok();    break;
 case	PLAYERSTATE.STAY     : scr_dim_playerstate_stay();			   break;
 } 

if (obj_Battle_Interface.battle_start = true){
walkspd = 0;
move = false;
} else if (obj_Battle_Interface.battle_start = false){
	walkspd = 4;
}
if (x!= xprevious or y!= yprevious){
	for(var i = array_size-1; i > 0; i--){
		posX[i] = posX[i-1];
		posY[i] = posY[i-1];
		//переміщення слухача
		if status = STATUS.ACTIVE audio_listener_set_position(0,x,y,0);
	}

	posX[0] = x;
	posY[0] = y;
}

