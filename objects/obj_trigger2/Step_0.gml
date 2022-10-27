/* if place_meeting(x, y, obj_dim_player2_cut) and  obj_dim_player2_cut.key_room_go {
// var _playerInst = instance_find(obj_dim_player1,0);
//var _playerInst2 = instance_find(obj_dim_player2,0);
var _playerInst3 = instance_find(obj_dim_player2_cut,0);
//var _objInst = instance_find(obj_table_gg,0);
var _objInst1 = instance_find(obj_mebli_gg_b,0);
var _sequence = Sequence2;
var _layerName = "Instances_obj";

_seqElms = layer_sequence_create(_layerName, 0,0, _sequence);
var _seqInst = layer_sequence_get_instance(_seqElms);

//sequence_instance_override_object(_seqInst,obj_dim_player1,  _playerInst)
//sequence_instance_override_object(_seqInst,obj_table_gg,  _objInst)
//sequence_instance_override_object(_seqInst,obj_dim_player2,  _playerInst2)
sequence_instance_override_object(_seqInst,obj_dim_player2_cut,  _playerInst3)
sequence_instance_override_object(_seqInst,obj_mebli_gg_b,  _objInst1)
/*var cam = view_get_camera(1);
var cw = camera_get_view_width(cam);
var ch = camera_get_view_height(cam);
view_set_visible(0, false);
view_set_visible(1, true);	*/

// }

 /*if layer_sequence_play(_sequence){
var cam = view_get_camera(1);
var cw = camera_get_view_width(cam);
var ch = camera_get_view_height(cam);
view_set_visible(0, false);
view_set_visible(1, true);
} else {
	 cam = view_get_camera(0);
	 cw = camera_get_view_width(cam);
	 ch = camera_get_view_height(cam);
	view_set_visible(0, true);
	view_set_visible(1, false);
	}