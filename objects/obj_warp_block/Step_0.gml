if place_meeting(x, y, obj_dim_player) && !instance_exists(obj_warp)
	{
	var insts =	instance_create_depth(0,0,-9999, obj_warp);
	insts.target_x = target_x;
	insts.target_y = target_y;
	insts.target_rm = target_rm;
	insts.target_face = target_face;
	}