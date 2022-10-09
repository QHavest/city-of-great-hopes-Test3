// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_string(argument0){
	var search = "";
 switch (global.languages)
 {
	 case 0: var lang = "english";break;
	 case 1: var lang = "ukrainian"; break;
	 default: var lang = "english";break;
 }
 
 ini_open("savedata_eng.ini");
 
 var findstr = ini_read_string(lang, string(search), "No string Found!");
 
 ini_close();
 findstr = string_replace_all(findstr, "*", "#");
 return findstr;
}