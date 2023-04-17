//УТОПИРОК
//якщо магазин або діалог відкритий, гравець нерухомий

if (global.shop or global.map or !global.dialog_end) {
	if lastmove = 0 sprite_index = asset_get_index("spr_dim_" + sprit + "_stay_r");
	else sprite_index = asset_get_index("spr_dim_" + sprit + "_stay_l");
//	if (audio_is_playing(s_walk)) audio_stop_sound(s_walk);
//	if (audio_is_playing(snd_run)) audio_stop_sound(snd_run);
	in_place = 0;
	exit;
} 

//система зміни статусу гравця
if global.dialog_end and !global.map and !global.shop and !global.dialogue_move
{
if(keyboard_check(ord("1"))) status = STATUS.ACTIVE;
if(keyboard_check(ord("2"))) status = STATUS.PASSIVE;
}

switch(status){
	case STATUS.ACTIVE	: scr_play_player()   ; break;
	case STATUS.PASSIVE	: scr_passive_player(); break;
	case STATUS.NONE	: break;
}

///////////////////////////////////////////////////////////////////////////////
///////?//////////////////////////////?///////////////////
if (global.dialogue_move = true){
	// зпам'ятовування статуса + звуки
	if status = STATUS.ACTIVE
	{
	status = STATUS.PASSIVE;
	last_active=true;	
	}
	// переміщення у задані координати із заданою швидкістю
	//mp_linear_step(xsd, ysd, 2, false);
	mp_potential_step(xsd,ysd, 2, false);
	// при досягненні визначеної координати
	if ( x = xsd and y = ysd  ) 
	{
		if in_place = 0
		{
			//if audio_is_playing(s_walk) audio_stop_sound(s_walk);
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
//		if !audio_is_playing(s_walk) audio_play_sound(s_walk,0,0,global.player_gain);
//		if audio_is_playing(snd_run) audio_stop_sound(snd_run);
	}
	
}	
// відновлення ативного статусу після закінчення діалогу


///////////////////////////////////////////////////////////////////////////////
switch(state){
	case	PLAYERSTATE.FREE	: scr_dim_playerstate_free_ytopurok();	break;
	case	PLAYERSTATE.BUY		: scr_after_shop_anim_ytopur(buing_spr,seller_spr,seller_spr_default,seller_obj);break;
	case	PLAYERSTATE.VODA	: scr_dim_playerstate_voda();			break;
	case	PLAYERSTATE.LAVKA1	: scr_dim_playerstate_Lavka("1");		break; 
	case	PLAYERSTATE.LAVKA2	: scr_dim_playerstate_Lavka("2");		break; 
	case	PLAYERSTATE.LAVKA3	: scr_dim_playerstate_Lavka("3");		break; 
	case	PLAYERSTATE.LAVKA4	: scr_dim_playerstate_Lavka("4");		break; 
	case	PLAYERSTATE.SMOKE	: scr_dim_playerstate_smoke();			break;
	case	PLAYERSTATE.ACLAVKA	: scr_dim_playerstate_AcLavka("1")			break;
 } 

//система записування координат проходження
if (x!= xprevious or y!= yprevious){
	for(var i = array_size-1; i > 0; i--)
	{
		posX[i] = posX[i-1];
		posY[i] = posY[i-1];
	}	
	posX[0] = x;
	posY[0] = y;
	if status = STATUS.ACTIVE 
	{
		//if krok krok = 0;
		//else krok = 1;
		//obj_dim_player2.krok = !krok;
		audio_listener_set_position(0,x,y,0);
	}
}