//draw_sprite(spr_hpRed, 0, gui_W/1.265, gui_H/1.223);
//draw_sprite_part(spr_hpGreen, 0, 0, 0, amount_hp, 35, gui_W/1.2568, gui_H/1.112);
draw_text(0,50,power_hit);

	switch(obj_Battle_Interface.enemies){
		case ENEMY.Narkomany :
			draw_sprite(spr_down_obvodka, 0, gui_W/4.21, gui_H/1.928);
			draw_sprite(spr_down_obvodka_wall, 0, gui_W/4.12, gui_H/1.894);
		break;
		case ENEMY.Kavkazci :
			draw_sprite(spr_down_obvodka, 1, gui_W/4.21, gui_H/1.928);
			draw_sprite(spr_down_obvodka_wall, 1, gui_W/4.12, gui_H/1.894);
		break;
		case ENEMY.Sectants :
			draw_sprite(spr_down_obvodka, 2, gui_W/4.21, gui_H/1.928);
			draw_sprite(spr_down_obvodka_wall, 2, gui_W/4.12, gui_H/1.894);
		break;
		case ENEMY.Hopniki :
			draw_sprite(spr_down_obvodka, 3, gui_W/4.21, gui_H/1.928);
		break;
		}

