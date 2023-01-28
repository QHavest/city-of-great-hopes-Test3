if (global.map or global.pause or !global.dialog_end or global.shop){
	show_diary = false;
	exit;
}
if ((keyboard_check_pressed(ord("N")) or keyboard_check_pressed(ord("T"))) and !global.diary){	
	global.diary = !global.diary;
	show_diary = !show_diary;
	audio_play_sound(snd_diary_open, 1, 0, global.System_gain);
}  else if ((keyboard_check_pressed(ord("N")) or keyboard_check_pressed(ord("T"))) and global.diary){
	global.diary = !global.diary;
	show_diary = !show_diary;
	audio_play_sound(snd_diary_close, 1, 0, global.System_gain);
}

if(keyboard_check_pressed(vk_escape) and show_diary){
global.diary = false;
show_diary = false;
audio_play_sound(snd_diary_close, 1, 0, global.System_gain);
}








