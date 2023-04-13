// скрипт плавно тушить стару музику до переходу і міняє змінну  new_sound
function scr_music_fon_change(r){
//	if !object_exists(music_room) instance_create_depth(0,0,-99999, music_room)
	with (music_room){
		new_sound = scr_rooms_variables(r,1);

	if (old_sound != new_sound and old_sound != noone )
	{
		if 	(new_sound = noone)// if indor
		{
			audio_sound_gain(old_sound, 0, gain_decrease);
			alarm[2]=((gain_decrease/1000)*room_speed)+1;
		}	
		else
		{
			alarm[0]=((gain_decrease/1000)*room_speed)+1;
			audio_sound_gain(old_sound, 0, gain_decrease);
		}
	}
	if 	(old_sound = noone and new_sound != noone)
		{
			alarm[1]=1;
		}
	}
}
