// вибір району у межах масиву
if !acepted_key{
pos += keyboard_check_pressed(vk_up)-keyboard_check_pressed(vk_down);
if pos =  clamp(pos,0,3) and (keyboard_check_pressed(vk_up) or keyboard_check_pressed(vk_down))
{	audio_play_sound(snd_search,5,0,global.System_gain);
	}
else pos =  clamp(pos,0,3);
// зміна позиції та спрайту квадрату для обведення обраного району
	if keyboard_check_pressed(vk_up) or keyboard_check_pressed(vk_down)
	{
		sprite_index = imaga[pos];
		x = pos_x[pos];
		y = pos_y[pos];
		
	}
// вибір району
	if keyboard_check_released(vk_enter)
	{
		acepted_key = 1;
		audio_play_sound(snd_op_accept,5,0,global.System_gain);
	}
}