// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function activate_obj_night(){
	//instance_activate_object(obj_container_night);
	instance_activate_object(obj_nights);
	deactivate_warp_night(); //деактивація порталів вночі
	//global.warp_night = false;	
	//instance_deactivate_object(inst_4D291E2E)
	//instance_activate_object(obj_truck_closeds_night);
	//instance_activate_object(obj_truck_closeds_night2);
	//instance_activate_object(obj_box_container_night);
	//instance_activate_object(obj_lamp_night_container);
	
	scr_player_and_objects(obj_nights);
	with(obj_manager_9)
	{
		a = 1;
	}
}