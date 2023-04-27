switch(room)
{
	case rm_street_second_side:
	if (!room_trans_rail){
		scr_transition_loc();
		alarm[0] = 1;
	}
	
	break;
	case rm_street_container:
	if (!room_trans_cont){
		scr_transition_loc();
		alarm[0] = 1;
	}
	
	break;
	case rm_home_gg:
	if (!room_trans_housegg){
		scr_transition_loc();
		alarm[0] = 1;
	}
	break;
	case rm_center_left:
	if (!room_trans_cent){
		scr_transition_loc();
		alarm[0] = 1;
	}
	break;
	case rm_south:
	if (!room_trans_tukhl){
		scr_transition_loc();
		alarm[0] = 1;
	}
	break;
	case rm_fish_and_bazaar:
	if (!room_trans_veggies){
		scr_transition_loc();
		alarm[0] = 1;
	}
	break;
}
