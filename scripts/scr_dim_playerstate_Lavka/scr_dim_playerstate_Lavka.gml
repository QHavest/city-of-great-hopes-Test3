/// @param numb_lavki_(string)
function scr_dim_playerstate_Lavka(lav_num){
// exit 
if (keyboard_check(ord("E")) and posudiv) { quit=true;}
	
//шоби не рипались
status = STATUS.NONE;
//якщо ГГ сів то анімація дихання на лавці
if (sprite_index=asset_get_index("spr_"+sprit+"_sit_lav_"+lav_num))
{	
	if (scr_dim_animation_end(sprite_index) ){
		posudiv = true;
		sprite_index=asset_get_index("spr_"+sprit+"_lavka_"+lav_num);
		alarm[0]=room_speed*10;
		l=lav_num;
	}
}
//щоб запустити анімацію вставання
if (quit and sprite_index != asset_get_index("spr_"+sprit+"_stand_lav_"+lav_num))
{
	alarm[0]=-1;
	image_index=0;
	sprite_index=asset_get_index("spr_"+sprit+"_stand_lav_"+lav_num);
	quit=false;
}
// коли встали з лавки даєм свободу гравцю
if (sprite_index=asset_get_index("spr_"+sprit+"_stand_lav_"+lav_num) and scr_dim_animation_end(sprite_index))
{
	state=PLAYERSTATE.FREE;
	global.dialogue_move = false;
	start=0;
	in_place=0;
	quit=false;
	posudiv = false;
	if (last_active = true)
	{
		status = STATUS.ACTIVE;
		last_active = 0;
	}
	else {status = STATUS.PASSIVE;}
}
}