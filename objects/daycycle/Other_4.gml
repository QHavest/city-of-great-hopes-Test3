switch(room){
	//case rm_main_menu:
	case rm_street_first_side: draw_daylight = true; break;
	case rm_street_second_side: draw_daylight = true; break;
	case rm_street_container: draw_daylight = true; break;
	case rm_street_container_night: draw_daylight = true; break;
	case rm_north: draw_daylight = true; break;
	case rm_south: draw_daylight = true; break;
	case rm_sport_centre: draw_daylight = true; break;
	case rm_school: draw_daylight = true; break;
	case rm_police: draw_daylight = true; break;
	case rm_center: draw_daylight = true; break;
	case rm_center_left: draw_daylight = true; break;
	case rm_center_right: draw_daylight = true; break;
	
	default: draw_daylight = false; break;
}
