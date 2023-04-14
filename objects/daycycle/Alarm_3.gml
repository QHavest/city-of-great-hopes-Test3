if(fog_exit) {fog_exit = false; exit;}

if(fog_or_not == false) 
{
	alarm_set(3, 12); 
}

if(fog_or_not == true and start_new = true)
{
	alarm_set(3, 15)

	var cameraX = camera_get_view_x(view_camera[0]);
	var cameraY = camera_get_view_y(view_camera[0]);

	var camera_width = camera_get_view_width(view_camera[0]);
	var camera_height = camera_get_view_height(view_camera[0]);

	repeat(12)
	{
		var randomY = random_range(0, camera_height);
		var randomX = random_range(0, room_width);
		part_particles_create(weather, randomX, cameraY + randomY, fog, 1);
		fogNum++;
		show_debug_message("FOG!!!!!");
	}
}