// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_transition_loc(){
	layer_create(-9998, "Transition_loc");
	var layerName = "Transition_loc";
	var seqnames = noone;
		seqnames = trans_location;
	sequence_id = layer_sequence_create(layerName,0,0, seqnames);
}