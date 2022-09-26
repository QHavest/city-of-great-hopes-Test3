// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function deactivate_obj_night(){
	activate_warp_night();
	//instance_deactivate_object(obj_container_night);
	//instance_deactivate_object(obj_truck_closeds_night);
	//instance_deactivate_object(obj_truck_closeds_night2);
	instance_deactivate_object(obj_nights);
	//instance_deactivate_object(obj_box_container_night);
	//instance_deactivate_object(obj_lamp_night_container);
}