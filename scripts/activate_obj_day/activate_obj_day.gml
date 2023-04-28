// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function activate_obj_day(){
	instance_activate_object(obj_days);
/*instance_activate_object(obj_container);
instance_activate_object(obj_trucks_open);
instance_activate_object(obj_orange);
instance_activate_object(obj_orange2);
instance_activate_object(obj_banana);
instance_activate_object(obj_mishky);
instance_activate_object(obj_watermelon);
instance_activate_object(obj_box_container);*/

	scr_player_and_objects(obj_days);
	
	with(obj_manager_9)
	{
		a = 0;
	}
	
	start_scena9 = false;
}