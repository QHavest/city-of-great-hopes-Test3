if place_meeting(x, y, obj_dim_player2_cut)
{
		view_visible[1]= false;
		camera_destroy(view_camera[1]);
		view_visible[7] = true;
		 cams1 = camera_create_view(0, 0, 213, 120, 0, obj_trigger2, -1, -1,300);
		view_set_camera(7, cams1);
} else {view_visible[7]= false;
		camera_destroy(view_camera[7]);
		view_visible[1] = true;
		
		 cams1 = camera_create_view(0, 0, 213, 120, 0, obj_dim_player2_cut,-1, -1,300);
		view_set_camera(1, cams1);
		}


