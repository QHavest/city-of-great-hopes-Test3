if obj_dim_player1.status= STATUS.ACTIVE{
if obj_dim_player1.key_room_go = true and place_meeting(x, y, obj_dim_player1) && !instance_exists(obj_warp)
	{
		
	var insts =	instance_create_depth(0,0,-9999, obj_warp);
	
	insts.target_x = target_x;
	insts.target_y = target_y;
	insts.target_rm = target_rm;
	insts.target_face = target_face;
	scr_music_fon_change(target_rm);
	audio_play_sound(dor_sound,5,0,global.player_gain);
	obj_dim_player1.InRoomMode = InRoomMode; //МОД ЯКИЙ ВКАЗУЄ ЧИ МОЖНА БІГАТИ В ПРИМІЩЕННІ (ВСТАНОВЛЮВАТИ ЧИ МОЖНА ЧИ НІ ТРЕБА В ПОРТАЛІ, ЩО ТЕЛЕПОРТУЄ В ЦЮ ЛОКАЦІЮ)
	obj_dim_player2.InRoomMode = InRoomMode;
	}
}

	if obj_dim_player2.status = STATUS.ACTIVE{
	if obj_dim_player2.key_room_go = true and place_meeting(x, y, obj_dim_player2) && !instance_exists(obj_warp)
	{
		
	var insts =	instance_create_depth(0,0,-9999, obj_warp);
	
	insts.target_x = target_x;
	insts.target_y = target_y;
	insts.target_rm = target_rm;
	insts.target_face = target_face;
	scr_music_fon_change(target_rm);
	audio_play_sound(dor_sound,5,0,global.player_gain);
	obj_dim_player1.InRoomMode = InRoomMode; //МОД ЯКИЙ ВКАЗУЄ ЧИ МОЖНА БІГАТИ В ПРИМІЩЕННІ (ВСТАНОВЛЮВАТИ ЧИ МОЖНА ЧИ НІ ТРЕБА В ПОРТАЛІ, ЩО ТЕЛЕПОРТУЄ В ЦЮ ЛОКАЦІЮ)
	obj_dim_player2.InRoomMode = InRoomMode;}
}
	
	
	
	
	