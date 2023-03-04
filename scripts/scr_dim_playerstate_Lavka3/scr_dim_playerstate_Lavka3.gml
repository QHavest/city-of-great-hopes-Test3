/// @param numb_lavki_(string)
function scr_dim_playerstate_Lavka3_pl1(){
//якщо ГГ сів то анімація дихання на лавці	
if ( sprite_index=asset_get_index("spr_"+sprit+"_sit_lav_3") and scr_dim_animation_end(sprite_index) )
{
	sprite_index=asset_get_index("spr_"+sprit+"_lavka_3");
}
//щоб запустити анімацію вставання
if keyboard_check(ord("Q")) sprite_index=asset_get_index("spr_"+sprit+"_stand_lav_3");
// коли встали з лавки даєм свободу гравцю
if sprite_index=asset_get_index("spr_"+sprit+"_stand_lav_3") and scr_dim_animation_end(sprite_index) 
{
state=PLAYERSTATE.FREE;
global.dialogue_move = false;
start=0;
in_place=0;
}
}

function scr_dim_playerstate_Lavka3_pl2(){
if ( sprite_index=asset_get_index("spr_"+sprit+"_sit_lav_3") and scr_dim_animation_end(sprite_index) )
{	
	sprite_index=asset_get_index("spr_"+sprit+"_lavka_3");;
}
//щоб запустити анімацію вставання
if keyboard_check(ord("Q")) sprite_index=asset_get_index("spr_"+sprit+"_stand_lav_3");
// коли встали з лавки даєм свободу гравцю
if sprite_index=asset_get_index("spr_"+sprit+"_stand_lav_3") and scr_dim_animation_end(sprite_index) 
{
state=PLAYERSTATE.FREE;
global.dialogue_move = false;
start=0;
in_place=0;
}
}