/// @description check for be seeing
cam_y = camera_get_view_y(view_camera[view_current]);
cam_x = camera_get_view_x(view_camera[view_current]);
	if x > cam_x and x < cam_x+cam_w and y > cam_y and y < cam_y+cam_h
		{if obj_mozg_ai.bach_mamy=false obj_mozg_ai.bach_mamy=true;}		
alarm[1]=10;