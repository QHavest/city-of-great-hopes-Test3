// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function change_volume(){
var type = menu_option[page];
	
	//show_debug_message(argument0);
	
switch(type){
	case 0: audio_master_gain(argument0); show_debug_message("case 0"); break;
	case 1: global.player_gain = argument0; global.System_gain = argument0; show_debug_message("case 1"); break;
	case 2: global.Fon_sound_gain = argument0; show_debug_message("case 2"); break;
}
}