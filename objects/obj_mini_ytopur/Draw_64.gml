alarm[1] -= 1;
if (hits_grusha = true)
{
	alarm[2] -= 1;
	if (keyboard_check_pressed(vk_down)){	
	obj_grusha_sml_up.idx = 0;

	if (alarm[2] < 1){
		hits_grusha = false;
		alarm[0] = 0
		}
	alarm[2] = 5;
	}
} else if (hits_grusha = false)
{
	if (keyboard_check_pressed(vk_down)){
	obj_grusha_sml_up.idx = 0;
	draw_sprite(spr_score_min_ytopur,0,1050, 940);
	
	}
}

if (hits_grusha = true and keyboard_check_pressed(vk_down)){
alarm[1] = 500;
}
repeat 5{
if (alarm[1] > 1){
draw_sprite(spr_score_ytopur,0,1050, 940);}}