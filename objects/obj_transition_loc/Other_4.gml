switch(room)
{
	case rm_street_second_side:
	if (global.room_trans_rail != 1){
		scr_transition_loc();
		global.room_trans_rail = 1;
	}
	
	break;
	case rm_street_container:
	if (global.room_trans_cont == false){
			layer_create(-9995, "Transition_loc");
			var layerName = "Transition_loc";
			var seqnames = trans_location;
			sequence_ids = layer_sequence_create(layerName,0,0, seqnames);
		alarm[0] = 1;
		//tml_location_trans.timeline_index = 1;
	}
	
	break;
	case rm_home_gg:
	if (global.room_trans_housegg != 1){
		scr_transition_loc();
		global.room_trans_housegg = 1;
	}
	break;
	case rm_center_left:
	if (global.room_trans_cent != 1){
		scr_transition_loc();
		global.room_trans_cent = 1;
	}
	break;
	case rm_south:
	if (global.room_trans_tukhl != 1){
		scr_transition_loc();
		global.room_trans_tukhl = 1;
	}
	break;
	case rm_fish_and_bazaar:
	if (global.room_trans_veggies != 1){
		scr_transition_loc();
		global.room_trans_veggies = 1;
	}
	break;
}
