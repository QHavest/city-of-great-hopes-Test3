switch(global.LANGUAGE)
	{
		case "eng":
			switch(room)
			{
				case rm_street_second_side:
				sprite_index = spr_loc_railway_ENG;
				break;
				case rm_street_container:
				sprite_index = spr_loc_market_cont_ENG;
				break;
				case rm_home_gg:
				sprite_index = spr_loc_market_house_ENG;
				break;
				case rm_center_left:
				sprite_index = spr_loc_center_ENG;
				break;
				case rm_south:
				sprite_index = spr_loc_tukhl_ENG;
				break;
				case rm_fish_and_bazaar:
				sprite_index = spr_loc_market_veggies_ENG;
				break;
			}
		break;
		case "ua":
			switch(room)
			{
				case rm_street_second_side:
				sprite_index = spr_loc_railway_UA;
				break;
				case rm_street_container:
				sprite_index = spr_loc_market_cont_UA;
				break;
				case rm_home_gg:
				sprite_index = spr_loc_market_house_UA;
				break;
				case rm_center_left:
				sprite_index = spr_loc_center_UA;
				break;
				case rm_south:
				sprite_index = spr_loc_tukhl_UA;
				break;
				case rm_fish_and_bazaar:
				sprite_index = spr_loc_market_veggies_UA;
				break;
			}
		break;
	}
	