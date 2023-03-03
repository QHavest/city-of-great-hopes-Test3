//КРИС
//якщо магазин відкритий, гравець нерухомий
if (global.shop or !global.dialog_end or global.map) {
//	if lastmove = 0 sprite_index = asset_get_index("spr_dim_" + sprit + "_stay_r");
//	else sprite_index = asset_get_index("spr_dim_" + sprit + "_stay_l");
	if (audio_is_playing(s_walk)) audio_stop_sound(s_walk);
	if (audio_is_playing(snd_run)) audio_stop_sound(snd_run);
	in_place = 0;
}

//система зміни статусу гравця or !global.dialogue_move

if(keyboard_check(ord("1"))) status = STATUS.PASSIVE;
if(keyboard_check(ord("2"))) status = STATUS.ACTIVE;


switch(status){
	case STATUS.ACTIVE : scr_play_player()   ; break;
	case STATUS.PASSIVE: scr_passive_player(); break;
}



///////////////////////////////////////////////////////////////////////////////

if (global.dialogue_move = true){
	// зпам'ятовування статуса + звуки
	if status = STATUS.ACTIVE
	{
	status = STATUS.PASSIVE;
	last_active=true;	
	}
	// переміщення у задані координати із заданою швидкістю
	mp_linear_step(xsd, ysd, 2, false);
	// при досягненні визначеної координати
	if ( x = xsd and y = ysd  ) 
	{
		if in_place = 0
		{
			if audio_is_playing(s_walk) audio_stop_sound(s_walk);
			in_place = 1;
			xprevious = x; // для коректної анімації стояння
		}
		
		// задання напрямку стояння
		if napriam = "r" lastmove=0;
		else lastmove=1;
	}
	// звуки ходьби
	else if !in_place
	{
		if !audio_is_playing(s_walk) audio_play_sound(s_walk,0,0,global.player_gain);
		if audio_is_playing(snd_run) audio_stop_sound(snd_run);
	}
	
}	
// відновлення ативного статусу після закінчення діалогу
else if last_active = true and global.dialog_end
{
status = STATUS.ACTIVE;
last_active = 0;
}


//////////////////////////////////////////////////////////////////////////////

switch(state){
	case	PLAYERSTATE.FREE	: scr_dim_playerstate_free_krus();		  break;
	case	PLAYERSTATE.BUY		: scr_after_shop_anim_Krus();			break;
	case	PLAYERSTATE.LAVKA3	: scr_dim_playerstate_Lavka("3");		break;
	case	PLAYERSTATE.LAVKA4	: scr_dim_playerstate_Lavka("4");		break;
 } 



//анімація покупки

if (global.item_bought = true and status = STATUS.ACTIVE and global.shop = false){
	image_index = 0;
	state = PLAYERSTATE.BUY;
	status = STATUS.PASSIVE;
}


//система записування координат проходження
	if (x!= xprevious or y!= yprevious){
		for(var i = array_size-1; i > 0; i--){
			posX[i] = posX[i-1];
			posY[i] = posY[i-1];
			if status = STATUS.ACTIVE audio_listener_set_position(0,x,y,0);
		}	
		posX[0] = x;
		posY[0] = y;
	}

