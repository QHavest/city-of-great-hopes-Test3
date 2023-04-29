switch(room)
{
	case rm_main_menu:
		view_enabled = true;
		view_visible[0] = true;

		var _w = global.res_width;
		var _h = global.res_height;
		
		var _cam = camera_create_view(0, 0, 1920, 1080);

		camera_set_view_target(_cam, noone);
		camera_set_view_border(_cam, _w, _h);

		view_camera[0] = _cam;
		window_set_size(global.res_width, global.res_height);
		surface_resize(application_surface, global.res_width, global.res_height);
	break;
	case rm_street_second_side:
		case rm_south:
		case rm_home_gg:
		case rm_center_left:
		case rm_fish_and_bazaar:
		case rm_street_container:
		view_enabled = true;
		view_visible[0] = true;

		var _w = global.res_width;
		var _h = global.res_height;
		var _cam = camera_create_view(0, 0, _w/4, _h/4);

		camera_set_view_target(_cam, obj_dim_player1);
		camera_set_view_border(_cam, _w / 2, _h / 2);

		view_camera[0] = _cam;
		window_set_size(global.res_width, global.res_height);
		surface_resize(application_surface, global.res_width, global.res_height);
	break;
	case rm_cinema_inside:
		/*view_enabled = true;
		view_visible[0] = true;

		var _w = global.res_width;
		var _h = global.res_height;
		var _cam = camera_create_view(0, 0, _w/2, _h/2);

		camera_set_view_target(_cam, obj_dim_player1);
		camera_set_view_border(_cam, _w / 2, _h / 2);

		view_camera[0] = _cam;
		window_set_size(global.res_width, global.res_height);
		surface_resize(application_surface, global.res_width, global.res_height);*/
	break;
	default:
		view_enabled = true;
		view_visible[0] = true;

		var _w = global.res_width;
		var _h = global.res_height;
		var _cam = camera_create_view(0, 0, _w/6, _h/6);

		camera_set_view_target(_cam, obj_dim_player1);
		camera_set_view_border(_cam, _w / 2, _h / 2);

		view_camera[0] = _cam;
		window_set_size(global.res_width, global.res_height);
		surface_resize(application_surface, global.res_width, global.res_height);
	break;
}
