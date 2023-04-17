
if obj_dim_player1.status= STATUS.ACTIVE{
if obj_dim_player1.key_room_go = true and place_meeting(x, y, obj_dim_player1) && !instance_exists(obj_warp){
	for (var i = 0; i < 11; i++){
		if(global.ds_inventory[# 0, i] = 55){
			global.ds_inventory[# 0, i] = 0;
			var insts =	instance_create_depth(0,0,-9999, obj_warp);
		insts.target_x = target_x;
		insts.target_y = target_y;
		insts.target_rm = target_rm;
		scr_music_fon_change(target_rm);
		audio_play_sound(dor_sound,5,0,global.player_gain);
			break;
		}
	}
	}
} else if obj_dim_player2.status = STATUS.ACTIVE{
	if obj_dim_player2.key_room_go = true and place_meeting(x, y, obj_dim_player2) && !instance_exists(obj_warp)
	{
		for (var i = 0; i < 11; i++){
		if(global.ds_inventory[# 0, i] = 55){
			global.ds_inventory[# 0, i] = 0;
			var insts =	instance_create_depth(0,0,-9999, obj_warp);
		insts.target_x = target_x;
		insts.target_y = target_y;
		insts.target_rm = target_rm;
		scr_music_fon_change(target_rm);
		audio_play_sound(dor_sound,5,0,global.player_gain);
			break;
		}
	}
	}
}	