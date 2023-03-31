// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_ui_health(){
	draw_sprite(spr_hpEmpty, 1, gui_W/1.283, gui_H/1.223);
	draw_sprite_part(spr_hpRed_GG, 1, 0, 0, 279, 35, gui_W/1.2745, gui_H/1.112);
	draw_sprite_part(spr_hpGreen, 0, 0, 0, amount_hp, 35, gui_W/1.2745, gui_H/1.112);
			
	draw_sprite(spr_heart, 0, gui_W/1.188, gui_H/1.199);
	if (obj_krus_battle.phasese_krus != PHASESE_KRUS.Defeat2)
	{
		draw_sprite(spr_hpKrus, 0, gui_W/1.258, gui_H/1.204);
	} else {draw_sprite(spr_cross, 0, gui_W/1.258, gui_H/1.204);}
	if (obj_ytopur_battle.phasese != PHASESE.Defeat2)
	{
		draw_sprite(spr_hpYtopurok, 0, gui_W/1.123, gui_H/1.204);
	} else {draw_sprite(spr_cross, 0, gui_W/1.123, gui_H/1.204);}
}