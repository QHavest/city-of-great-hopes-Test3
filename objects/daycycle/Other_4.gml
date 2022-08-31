switch(room){
	case rm_main_menu:
	case rm_street_first_side: draw_daylight = true; break;
	case rm_street_container: draw_daylight = true; break;
	case rm_street_container_night: draw_daylight = true; break;
	
	default: draw_daylight = false; break;
}
