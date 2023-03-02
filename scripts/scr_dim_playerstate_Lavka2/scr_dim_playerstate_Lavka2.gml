// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_dim_playerstate_Lavka2(){

if ( sprite_index=asset_get_index("spr_"+sprit+"_sit_lav_4") and scr_dim_animation_end(sprite_index) )sprite_index=asset_get_index("spr_"+sprit+"_lavka_4");;
if keyboard_check(ord("Q")) sprite_index=asset_get_index("spr_"+sprit+"_stand_lav_4");
if sprite_index=asset_get_index("spr_"+sprit+"_stand_lav_4") and scr_dim_animation_end(sprite_index) 
{
state=PLAYERSTATE.FREE;
global.dialogue_move = false;
start=0;
in_place=0;
}
}