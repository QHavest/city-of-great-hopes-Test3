// вибір району у межах масиву
if !acepted_key{
pos += keyboard_check_pressed(vk_up)-keyboard_check_pressed(vk_down);
pos = clamp(pos,0,3);

// зміна позиції та спрайту квадрату для обведення обраного району
	if keyboard_check_pressed(vk_up) or keyboard_check_pressed(vk_down)
	{
		sprite_index = imaga[pos];
		x = pos_x[pos];
		y = pos_y[pos];
		audio_play_sound(snd_search,5,0,global.System_gain);
	}
// вибір району
	if keyboard_check_released(vk_enter)
	{
		acepted_key = 1;
		audio_play_sound(snd_op_accept,5,0,global.System_gain);
	}
}