if (global.map or global.pause or !global.dialog_end or global.shop){
	show_diary = false;
	exit;
}
if (keyboard_check_pressed(ord("N")) or keyboard_check_pressed(ord("T"))){	
	global.diary = !global.diary;
	show_diary = !show_diary;
}

if(keyboard_check_pressed(vk_escape) and show_diary){
global.diary = false;
show_diary = false;
}








