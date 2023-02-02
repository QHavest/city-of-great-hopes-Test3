//якщо магазин відкритий, гравець нерухомий
if (global.shop or !global.dialog_end) {
	sprite_index = asset_get_index("spr_dim_" + sprit + "_stay_r");
	sprite_index = asset_get_index("spr_dim_" + sprit + "_stay_l");
	exit;
}

//система зміни статусу гравця

if(keyboard_check(ord("1"))) status = STATUS.PASSIVE;
if(keyboard_check(ord("2"))) status = STATUS.ACTIVE;


switch(status){
	case STATUS.ACTIVE : scr_play_player()   ; break;
	case STATUS.PASSIVE: scr_passive_player(); break;
}

 switch(state){
case	PLAYERSTATE.FREE	: scr_dim_playerstate_free_krus();    break;
 } 


if (obj_Battle_Interface.battle_start = true){
walkspd = 0;
move = false;
} else if (obj_Battle_Interface.battle_start = false) {
	walkspd = 4;
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
