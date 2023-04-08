// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_help_minigame(){
switch(global.LANGUAGE)
	{
		case "eng":
			switch (enemies)
			{
				case ENEMY.Narkomany :
					draw_text_ext(gui_W/1.257, gui_H/1.66, "Press 'Space' to dodge syringes flapping between them.", stringHeight_torchky, 250);
				break;
				case ENEMY.Kavkazci :
					draw_text_ext(gui_W/1.257, gui_H/1.66, "Press 'Arrows UP or Down' to dodge USSR symbolic.", stringHeight_torchky, 250);
				break;
				case ENEMY.Sectants :
					draw_text_ext(gui_W/1.257, gui_H/1.66, "Press 'Arrows' to dodge crosses that falls from the sky.", stringHeight_torchky, 250);
				break;
				case ENEMY.Hopniki :
					draw_text_ext(gui_W/1.257, gui_H/1.66, "Press 'Arrows' to dodge knives.", stringHeight_torchky, 250);
				break;
			}

			switch (aliens)
			{
				case ALIES.Ytopurok_mini:
				draw_text_ext(gui_W/1.257, gui_H/1.66, "Press 'Arrows'to punch the pears", stringHeight_torchky, 250);
				break;
				case ALIES.Krus_mini:
				draw_text_ext(gui_W/1.257, gui_H/1.66, "Press 'Arrows Left or Right'. Catch objects with a white outline", stringHeight_torchky, 250);
				break;
			}
		break;
		case "ua":
			switch (enemies)
			{
				case ENEMY.Narkomany :
					draw_text_ext(gui_W/1.257, gui_H/1.66, "Натискай 'Пробіл', щоб ухилятися від шприців, що пролітають.", stringHeight_torchky, 250);
				break;
				case ENEMY.Kavkazci :
					draw_text_ext(gui_W/1.257, gui_H/1.66, "Натискай 'Стрілки вгору чи вниз' щоб ухилятися від СРСР символів", stringHeight_torchky, 250);
				break;
				case ENEMY.Sectants :
					draw_text_ext(gui_W/1.257, gui_H/1.66, "Натискай 'Стрілки' щоб ухлятися від хрестів які падають.", stringHeight_torchky, 250);
				break;
				case ENEMY.Hopniki :
					draw_text_ext(gui_W/1.257, gui_H/1.66, "Натискай 'Стрілки' щоб ухилятися ножів.", stringHeight_torchky, 250);
				break;
			}

			switch (aliens)
			{
				case ALIES.Ytopurok_mini:
				draw_text_ext(gui_W/1.257, gui_H/1.66, "Натискай 'Стрілки' щоб бити по груші яка засвічуєтсья", stringHeight_torchky, 250);
				break;
				case ALIES.Krus_mini:
				draw_text_ext(gui_W/1.257, gui_H/1.66, "Натискай 'Стрілки вліво чи вправо'. Хапай об'єкти які з обводкою", stringHeight_torchky, 250);
				break;
			}
		break;
	}
}

function scr_help_minigame_wait(){
	switch(global.LANGUAGE)
	{
		case "eng":
			draw_text_ext(gui_W/1.257, gui_H/1.66, "Press 'Arrows UP or Down' to start the fight. Press 'Enter' to confirm", stringHeight_torchky, 250);
		break;
		case "ua":
			draw_text_ext(gui_W/1.257, gui_H/1.66, "Натискай 'Стрілки вгору чи вниз' для початку бою. Натискай 'Enter' щоб підтвердити", stringHeight_torchky, 250);
		break;
	}
}
