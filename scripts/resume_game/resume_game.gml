// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function resume_game(){
global.pause = false;
open_pause = false;
instance_activate_all();
inputting = true;
page = 0;
menu_option[0] = 0;
menu_option[1] = 0;
layer_sequence_destroy(sequence_id);
layer_destroy(layerName);


}