// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_help_minigame(){
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
}

function scr_help_minigame_wait(){
	draw_text_ext(gui_W/1.257, gui_H/1.66, "Press 'Arrows UP or Down' to start the fight. Press 'Enter' to confirm", stringHeight_torchky, 250);
}
