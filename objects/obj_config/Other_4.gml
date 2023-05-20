switch(room)
{
	case testing_room:
		window_set_size(1920, 1080);
		surface_resize(application_surface,1920,1080);
		display_set_gui_size(1920, 1080);
	break;
	case rm_main_menu:
		view_enabled = true;
		//view_visible[0] = true;

		var _w = global.res_width;
		var _h = global.res_height;
		
		var _cam = camera_create_view(0, 0, _w, _h);

		camera_set_view_target(_cam, noone);
		camera_set_view_border(_cam, _w, _h);

		view_camera[0] = _cam;
		window_set_size(global.res_width, global.res_height);
		surface_resize(application_surface, global.res_width, global.res_height);
		display_set_gui_size( global.res_width, global.res_height);
	break;
	
	case Room61:
	case rm_mapa_new:
		window_set_size(1920, 1080);
		surface_resize(application_surface,1920,1080);
		display_set_gui_size(1920, 1080);
		//window_set_size(global.res_width, global.res_height);
		//surface_resize(application_surface, global.res_width, global.res_height);
	break;
	
	case rm_end:
		window_set_size(1920, 1080);
		surface_resize(application_surface,1920,1080);
		display_set_gui_size(1920, 1080);
	break;
	
	case rm_street_second_side:
		case rm_south:
		case rm_home_gg:
		case rm_center_left:
		case rm_fish_and_bazaar:
		case rm_street_container:
		view_enabled = true;
		//view_visible[0] = true;

		var _w = global.res_width;
		var _h = global.res_height;
		var _cam = camera_create_view(0, 0, _w/4, _h/4);
		
		camera_set_view_target(_cam, obj_dim_player1);

		camera_set_view_border(_cam, _w / 2, _h / 2);

		view_camera[0] = _cam;
		view_camera[1] = _cam;
		window_set_size(global.res_width, global.res_height);
		surface_resize(application_surface, global.res_width, global.res_height);
		display_set_gui_size( global.res_width, global.res_height);
		//display_set_gui_size(1680, 1050);
	break;
	case rm_indoor_rival_station:
		view_enabled = true;
		//view_visible[0] = true;

		var _w = global.res_width;
		var _h = global.res_height;
		if (global.res_width<1366){
		var _cam = camera_create_view(0, 0, _w/5, _h/5);
		} else {var _cam = camera_create_view(0, 0, _w/6, _h/6);}

		camera_set_view_target(_cam, obj_dim_player1);
		camera_set_view_border(_cam, _w / 2, _h / 2);

		view_camera[0] = _cam;
		view_camera[1] = _cam;
		window_set_size(global.res_width, global.res_height);
		surface_resize(application_surface, global.res_width, global.res_height);
		display_set_gui_size(global.res_width, global.res_height);
	break;
	default:
		view_enabled = true;
	//	view_visible[0] = true;

		var _w = global.res_width;
		var _h = global.res_height;
		var _cam = camera_create_view(0, 0, _w/9, _h/9);

		camera_set_view_target(_cam, obj_dim_player1);
		camera_set_view_border(_cam, _w / 2, _h / 2);

		view_camera[0] = _cam;
		view_camera[1] = _cam;
		window_set_size(global.res_width, global.res_height);
		surface_resize(application_surface, global.res_width, global.res_height);
		display_set_gui_size(global.res_width, global.res_height);
	break;
}
