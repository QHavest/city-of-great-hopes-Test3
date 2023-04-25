if (keyboard_check_pressed(vk_lalt)){
layer_create(-9999, "Transition_loc");
var layerName = "Transition_loc";
var seqname = 0;
var seqnames = noone;
switch(seqname){
case 0:
	seqnames = trans_location;
break;


}
if (!layer_sequence_exists("Transition_loc", sequence_id))
{
	
	sequence_id = layer_sequence_create(layerName, obj_dim_player1.x,obj_dim_player1.y, seqnames);
}
else
{
	layer_sequence_destroy(sequence_id);
}
}