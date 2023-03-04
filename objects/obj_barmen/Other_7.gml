/// @description Insert description here
// You can write your code in this editor
	if a = 1
	{ 
		sprite_index = spr_barmen
	}
	if a = 2
{ 
	switch(sprite_index){
		case spr_barmen: sprite_index = spr_barmen_Naluv_1; break;
		case spr_barmen_Naluv_1: sprite_index = spr_barmen_na_puvo; break;
		case spr_barmen_na_puvo: sprite_index = spr_barmen_Naluv_2; break;
		case spr_barmen_Naluv_2: sprite_index = spr_barmen_hovaie; break;
		case spr_barmen_hovaie: sprite_index = spr_barmen_natertu; a=1; break;
	}
	}




