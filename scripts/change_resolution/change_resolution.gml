// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function change_resolution(){
	switch(argument0){
	case 0: window_set_size(384,216); break;
	case 1: window_set_size(768,432); break;
	case 2: window_set_size(1152,648); break;
	case 3: window_set_size(1680,1050); break;
	case 4: window_set_size(1920,1080); break;
}
}