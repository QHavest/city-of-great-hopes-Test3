// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_box_at_button(){
	if (mouse_check_button(mb_left)){
		instance_create_layer(mouse_x, mouse_y, "Instances_obj", obj_dim_player1);
		cutscene_end_action();
	}
}