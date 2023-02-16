//КРИС
//якщо магазин відкритий, гравець нерухомий
if (global.shop or !global.dialog_end or global.map or !global.dialogue_move) {
	if lastmove = 0 sprite_index = asset_get_index("spr_dim_" + sprit + "_stay_r");
	else sprite_index = asset_get_index("spr_dim_" + sprit + "_stay_l");
	if (audio_is_playing(s_walk)) audio_stop_sound(s_walk);
	if (audio_is_playing(snd_run)) audio_stop_sound(snd_run);
	in_place = 0;
}

//система зміни статусу гравця

if(keyboard_check(ord("1"))) status = STATUS.PASSIVE;
if(keyboard_check(ord("2"))) status = STATUS.ACTIVE;


switch(status){
	case STATUS.ACTIVE : scr_play_player()   ; break;
	case STATUS.PASSIVE: scr_passive_player(); break;
}

///////////////////////////////////////////////////////////////////////////////
/*if((place_meeting(x, y, obj_dialog_start) and keyboard_check_pressed(ord("Q"))) or global.dialogue_move = true){
	global.dialogue_move = true;
	xsd = inst_28953189.x-20;
	ysd = inst_28953189.y+2;
}*/
if (global.dialogue_move = true){
	if status = STATUS.ACTIVE
	{
	status = STATUS.PASSIVE;
	last_active=true;
	}
	mp_linear_step(xsd, ysd, 2, false);
	if ( x = xsd and y = ysd  ) 
	{
		if in_place = 0
		{
			in_place = 1;
		//	x = xsd;
		 //y = ysd;
		//napriam = obj_dialog_start.n2
		}
		if napriam = "r" lastmove=0;
		else lastmove=1;
		// під час очікуваня руху іншого персонажа
		sprite_index =  asset_get_index("spr_dim_Krus_stay_"+napriam);//spr_dim_Krus_stay_r ;
	}
}	
else if last_active = true and global.dialog_end
{
status = STATUS.ACTIVE;
last_active = 0;
}


//////////////////////////////////////////////////////////////////////////////

//анімація покупки
if (global.item_bought = true and status = STATUS.ACTIVE and global.shop = false){
	image_index = 0;
	state = PLAYERSTATE.BUY;
	status = STATUS.PASSIVE;
}

switch(state){
	case	PLAYERSTATE.FREE	: scr_dim_playerstate_free_krus();    break;
	case	PLAYERSTATE.BUY		: scr_after_shop_anim_Krus();		break;
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

