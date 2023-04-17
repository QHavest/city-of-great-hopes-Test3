if(show_diary = true){
if(global.LANGUAGE = "ua"){
	if(page = 0){
		draw_sprite_ext(spr_diary, 1, gui_W/2, gui_H/2, 1, 1, 0, c_white, 1);
	}
	if(page = 1){
		draw_sprite_ext(spr_diary_page1, 1, gui_W/2, gui_H/2, 1, 1, 0, c_white, 1);
	}
	}
if(global.LANGUAGE = "eng"){
	if(page = 0){
		draw_sprite_ext(spr_diary, 0, gui_W/2, gui_H/2, 1, 1, 0, c_white, 1);
	}
	if(page = 1){
		draw_sprite_ext(spr_diary_page1, 0, gui_W/2, gui_H/2, 1, 1, 0, c_white, 1);
	}
	}
}




