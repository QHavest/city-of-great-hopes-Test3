/// @description Insert description here
// You can write your code in this editor
switch(room){
case rm_home_gg:
	if (bachuv_kavovy_baby=false and object_exists(obj_kavova_babka) )	 
	{
		with (obj_kavova_babka){
			cam_y = camera_get_view_y(view_camera[view_current]);
			cam_x = camera_get_view_x(view_camera[view_current]);
			if (x > cam_x and x < cam_x+cam_w)
			{	obj_mozg_ai.bachuv_kavovy_baby = true;}
		}
	}
	if (!bachuvkyriagy and object_exists(obj_smoking))		 
	{
		with (obj_smoking){
			cam_y = camera_get_view_y(view_camera[view_current]);
			cam_x = camera_get_view_x(view_camera[view_current]);
			if (x > cam_x and x < cam_x+cam_w and y > cam_y and y < cam_y+cam_h)
			{	obj_mozg_ai.bachuvkyriagy=true;}
		}
	}
	alarm[0]=10;
break

case rm_south:
	if (!bach_mamy and object_exists(obj_mama_2)) 
	{
		with (obj_mama_2){
			cam_y = camera_get_view_y(view_camera[view_current]);
			cam_x = camera_get_view_x(view_camera[view_current]);
			if (x > cam_x and x < cam_x+cam_w and y > cam_y and y < cam_y+cam_h)
			{	obj_mozg_ai.bach_mamy=true;}
		}
	}
	alarm[0]=10;
break

case rm_street_container:
	if (!bach_ssuklo_ssut and object_exists(obj_bomz_ssuklo)) 
	{
		with (obj_bomz_ssuklo){
			cam_y = camera_get_view_y(view_camera[view_current]);
			cam_x = camera_get_view_x(view_camera[view_current]);
			if (x > cam_x and x < cam_x+cam_w and y > cam_y and y < cam_y+cam_h)
			{	obj_mozg_ai.bach_ssuklo_ssut=true;}
		}
	}
	alarm[0]=10;
break

}