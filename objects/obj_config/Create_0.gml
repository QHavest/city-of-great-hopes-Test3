/// @desc весь config
global.res_width = display_get_width();
global.res_height = display_get_height();
display_set_gui_size(global.res_width, global.res_height);//відповідає чи будуть чорні полоски чи ні
switch(global.res_width){//змінюємо масштаб інтерфейсу залежно від розширення
	case 1366:
	display_set_gui_maximise(0.8, 0.8);//1366 x 768
	break;
	case 1440:
	display_set_gui_maximise(0.9, 0.9);//1440 x 900
	break;
	case 1600:
	display_set_gui_maximise(0.95, 0.95);//1600 x 1024
	break;
	case 1680:
	display_set_gui_maximise(1, 1);//1680 x 1050
	break;
	default:
	display_set_gui_maximise(1, 1);//1680 x 1050
	break
}
global.screen_width = 1920
global.screen_height = 1080
global.shop = false
global.dialog_end = 1;
global.fullscreen = 1;

//window_set_fullscreen(true);
//change_window_mode();
global.rezolution = 1;
global.master = 0.5;
//global.LANGUAGE = "eng";

switch (os_get_language())
{
    case "ru": global.LANGUAGE = "ua"; break;
	case "uk": global.LANGUAGE = "ua"; break;
    default: global.LANGUAGE = "eng"; break;
}
global.sequence = 0;
global.task = 0;
global.noRest = 0;
global.boss = 0;

//aspect_ratio();

texturegroup_load("Default");
display_reset(0, true);

