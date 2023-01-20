// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function change_resolution(){
	switch(argument0){
	case 0: window_set_size(1280,1024); global.rezolution = 0; break;
	case 1: window_set_size(1680,1050); global.rezolution = 1;break;
	case 2: window_set_size(1920,1080); global.rezolution = 2;break;
}
}