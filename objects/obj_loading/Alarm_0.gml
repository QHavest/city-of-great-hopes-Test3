if(global.gameStart == 1 and room != rm_main_menu) scr_saving_1();

alarm_set(0, 25 * 60 * saveTime)
show_debug_message("autosaving");