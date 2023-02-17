// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function change_language(){
switch(argument0){
 case 0: global.LANGUAGE="eng"; break;
 case 1: global.LANGUAGE="ua"; break;
 
}

back_menu_from_settings();

}