/// @description Insert description here
// You can write your code in this editor
depth = inst_539D1281.depth - 1;

alarm[0] -= 1;

if (alarm[0] < 1){
		sprite_index = spr_babka_suvenir_21;
	if (image_speed > 0){
		if (image_index >= image_number - 1){
			alarm[0] = 400;
			image_index = 1;
			sprite_index = spr_babka_suvenir12;
		}
	}
}


