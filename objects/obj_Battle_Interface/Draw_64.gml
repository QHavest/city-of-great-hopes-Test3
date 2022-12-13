//Інтерфейс
if(battle_start = true){
	instance_deactivate_object(obj_inventory);
	draw_sprite(spr_battleI, 0, gui_W/100, gui_H/100);

	//draw_sprite(spr_screen, 0, gui_W/4, gui_H/2);
	//draw_sprite(spr_background_narko, 0, gui_W/4, gui_H/2);

/*
if(battle_start = true){
draw_sprite(spr_background_narko, 0, gui_W/3.925, gui_H/1.892);
}*/
	
} else {instance_activate_object(obj_inventory);}

