/// @desc UI
key_pause = keyboard_check_pressed(vk_escape)
map_key = keyboard_check(ord("M"))
if (game_paused)
{
	// Выводим на экран наш скриншот
	draw_sprite(pause_screenshot, 0, 0, 0);
 
	// Выравниваем текст посередине и выводим надпись Game Paused
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	//draw_text(global.screen_width/ 2, global.screen_height /2, "Game Paused");
	draw_sprite(spr_pause, 0, global.screen_width-1000, global.screen_height-500)
	//draw_text_transformed(global.screen_width/ 2, global.screen_height /2, "Game Paused",4,4,image_angle);
 
	// Возвращаем стандартные настройки выравнивания
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
 
	// Снимаем игру с паузы
	if (key_pause)
	{
		game_paused = !game_paused;
 
		// Снова включаем все объекты
		instance_activate_all();
	}
}
else
{
	// Код отрисовки интерфейса
 
	// Ставим игру на паузу
	if (key_pause)
	{
		game_paused = !game_paused;
 
		// Создаём спрайт из поверхности приложения (делаем скриншот)
		pause_screenshot = sprite_create_from_surface(application_surface,0,0,
														global.screen_width,global.screen_height,0,0,0,0);
 
		// Отключаем все объекты, кроме этого
		instance_deactivate_all(true);
	}
}

// код для відкривання мапи
if (map_open)
{
	room_goto(rm_mapa);
	
	if (map_key)
	{
		map_open = !map_open;
		// Снова включаем все объекты
		instance_activate_all();
	}
}
else
{	
	if (map_key)
	{
		map_open = !map_open;
		instance_deactivate_all(true);
		
	}
}

