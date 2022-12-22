if place_meeting(x, y, obj_dim_player1) && !instance_exists(obj_warp)
	{
		scr_music_fon_change(target_rm); 
	var insts =	instance_create_depth(0,0,-9999, obj_warp);
	
		/*scr_warp_door_to_another_room(target_rm,target_x, target_y)
		}*/
	insts.target_x = target_x;
	insts.target_y = target_y;
	insts.target_rm = target_rm;
	insts.target_face = target_face;
	}
	//if drowing = true and room =  target_rm and old_side = false{
	//}