// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function back_menu(){	
room_goto(rm_main_menu)
audio_stop_sound(global.sound);
//if(room_goto(rm_main_menu)){ global.pauses=false;} else if (room_goto(rm_settings)){global.pauses=true;}
}