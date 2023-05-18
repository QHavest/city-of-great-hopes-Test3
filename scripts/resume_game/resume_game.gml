// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function resume_game(){
global.pause = !global.pause;
layer_sequence_destroy(sequence_id);
layer_destroy(layerName);
instance_activate_all();
}