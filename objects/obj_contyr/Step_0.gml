// вибір району у межах масиву
pos += keyboard_check_pressed(vk_up)-keyboard_check_pressed(vk_down);
pos = clamp(pos,0,3);

// зміна позиції та спрайту квадрату для обведення обраного району
if keyboard_check_pressed(vk_up) or keyboard_check_pressed(vk_down)
{
	sprite_index = imaga[pos];
	x = pos_x[pos];
	y = pos_y[pos];
}
/*if keyboard_check_pressed(vk_enter)
{
		global.map=false;
		room_goto(room_pos[pos]);
}*/

// при натисненні клавіші підтвердження - перехід до кімнати
if keyboard_check_pressed(ord("Y"))
{
		global.map=false;
		room_goto(room_pos[pos]);
}