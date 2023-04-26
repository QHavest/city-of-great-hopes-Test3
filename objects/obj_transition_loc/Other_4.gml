switch(room)
{
	case rm_street_second_side:
	if (room_trans_rail != 1){
		scr_transition_loc();
		room_trans_rail = 1;
	}
	break;
	case rm_street_container:
	if (room_trans_cont != 1){
		layer_create(-9998, "Transition_locs");
		var layerName = "Transition_locs";
		var seqname = 0;
		var seqnames = noone;
		switch(seqname){
		case 0:
			seqnames = trans_location;
		break;
		}
	
		sequence_id = layer_sequence_create(layerName,0,0, seqnames);
		//room_trans_cont = 1;
	}
	break;
	case rm_home_gg:
	if (room_trans_housegg != 1){
		scr_transition_loc();
		room_trans_housegg = 1;
	}
	break;
	case rm_center_left:
	if (room_trans_cent != 1){
		scr_transition_loc();
		room_trans_cent = 1;
	}
	break;
	case rm_south:
	if (room_trans_tukhl != 1){
		scr_transition_loc();
		room_trans_tukhl = 1;
	}
	break;
	case rm_fish_and_bazaar:
	if (room_trans_veggies != 1){
		scr_transition_loc();
		room_trans_veggies = 1;
	}
	break;
}
