if contakt
	if(keyboard_check_pressed(ord("E"))){
	obj_Battle_Interface.battle_start = true;
	obj_Battle_Interface.enemies = enemy;
	scr_music_fon_change(Room61);
	room_goto(karta);
	}





