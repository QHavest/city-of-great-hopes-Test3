// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_transition_loc(){
	layer_create(-9998, "Transition_loc");
	var layerName = "Transition_loc";
	var seqname = 0;
	var seqnames = noone;
	switch(seqname){
	case 0:
		seqnames = trans_location;
	break;
	}
	
	sequence_ids = layer_sequence_create(layerName,0,0, seqnames);
}