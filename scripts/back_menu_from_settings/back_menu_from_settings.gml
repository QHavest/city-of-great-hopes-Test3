// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function back_menu_from_settings(){
instance_activate_object(Main_Menu_Settings);
global.settings_open = 0;
instance_destroy();
}