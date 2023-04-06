/// @param numb_lavki_(string)
function scr_dim_playerstate_Lavka(lav_num){
//шоби не рипались
status = STATUS.NONE;
//якщо ГГ сів то анімація дихання на лавці
if ( sprite_index=asset_get_index("spr_"+sprit+"_sit_lav_"+lav_num) and scr_dim_animation_end(sprite_index) )
{
	sprite_index=asset_get_index("spr_"+sprit+"_lavka_"+lav_num);;
}
//щоб запустити анімацію вставання
if (keyboard_check(ord("Q")))
{
image_index=0;
sprite_index=asset_get_index("spr_"+sprit+"_stand_lav_"+lav_num);
}
// коли встали з лавки даєм свободу гравцю
if (sprite_index=asset_get_index("spr_"+sprit+"_stand_lav_"+lav_num) and scr_dim_animation_end(sprite_index))
{
	state=PLAYERSTATE.FREE;
	global.dialogue_move = false;
	start=0;
	in_place=0;

//with (obj_dim_player1)
//{
	if (last_active = true)
	{
		status = STATUS.ACTIVE;
		last_active = 0;
	}
	else {status = STATUS.PASSIVE;}
//}
/*
with (obj_dim_player2)
{
	state=PLAYERSTATE.FREE;
	if (last_active = true)
	{
		status = STATUS.ACTIVE;
		last_active = 0;
	}
}*/
}
}