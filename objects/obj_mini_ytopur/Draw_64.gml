var hits = power_hit;
draw_text(0,30,hits);
/*alarm[1] -= 1;
alarm[3] -= 1; 
alarm[4] -= 1; 
if (hits_grusha = true){
	alarm[2] -= 1;
	if (keyboard_check_pressed(vk_down)){	
	obj_grusha_sml_up.idx = 0;
	//if (alarm[2] < 1){
		hits_grusha = false;
		alarm[0] = 0
		//}
	//alarm[2] = 5;
	}
} else if (hits_grusha = false){
	if (keyboard_check_pressed(vk_down)){
	obj_grusha_sml_up.idx = 0;
	
	}
}

if(alarm[3] > 1 and hits_grusha = true){
    draw_sprite(spr_score_ytopur2,0,1050, 940);
}

if(alarm[4] > 1 and hits_grusha = false){
   draw_sprite(spr_score_ytopur2,1,1050, 940);
}
