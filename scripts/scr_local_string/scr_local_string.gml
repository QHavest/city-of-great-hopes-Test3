// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_local_string(argument0){
	global.Language = 1;
	var String = "";
	
	if global.Language = 0 {
		switch(argument0){
		case 0: String = "Paused" break;
		case 1: String = "Psdgfgsdg" break;
		}
							}
							
	if global.Language = 1 {
		switch(argument0){
		case 0: String = "Пауза" break;
		}
							}
return(String);
}