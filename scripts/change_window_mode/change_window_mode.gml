// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function change_window_mode(){
switch(argument0){
	case 0: 
		window_set_fullscreen(false);
		global.fullscreen = 0; 
	break;
	case 1:
		window_set_fullscreen(true);
		global.fullscreen = 1; 
	break;
	}
}