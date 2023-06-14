var _w = display_get_gui_width();
var _w2 = display_get_gui_width() - 38;//38 це ширина спрайту якому встановлюємо праву верхню сторону

var _h = display_get_gui_height()

switch (global.settings_open) {
    case 0:
		switch(global.LANGUAGE)
		{
			case "eng":
				draw_sprite_ext(spr_great_hopes_city_eng,0,_w/2,_h/6,2,2,0,c_white,1); 
				draw_sprite_ext(spr_lang,1,_w2,0,2,2,0,c_white,1);
				draw_sprite_ext(spr_version,0,0,display_get_gui_height()-display_get_gui_height(),2,2,0,c_white,1);
		
			break;
			case "ua":
				draw_sprite_ext(spr_great_hopes_city_ua,0,_w/2,_h/6,2,2,0,c_white,1); 
				draw_sprite_ext(spr_lang,0,_w2,0,2,2,0,c_white,1);
				draw_sprite_ext(spr_version,0,0,display_get_gui_height()-display_get_gui_height(),2,2,0,c_white,1);
			break;
		}
	break;
	case 1:
	break;
}
