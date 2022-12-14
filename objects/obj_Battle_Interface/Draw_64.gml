//Інтерфейс
if(battle_start = true){
	instance_deactivate_object(obj_inventory);
	draw_sprite(spr_battleI, 0, gui_W/100, gui_H/100);
	draw_sprite(spr_screen, 0, gui_W/3.918, gui_H/1.928);
	draw_sprite(spr_hpRed, 0, gui_W/1.265, gui_H/1.223);
	draw_sprite(spr_darkarr, 0, gui_W/10.69, gui_H/1.203);
	//полоска хп
	draw_sprite_part(spr_hpGreen, 0, 0, 0, amount_hp, 35, gui_W/1.2568, gui_H/1.112);
	//мерехтілка
	draw_sprite(spr_red_l, light_bi, gui_W/5.41, gui_H/2.40);
	//кнопки
	if(global.LANGUAGE = "eng"){
	draw_sprite(spr_DFight, 0,  gui_W/11.18, gui_H/1.320)
	}
} else {instance_activate_object(obj_inventory);}

