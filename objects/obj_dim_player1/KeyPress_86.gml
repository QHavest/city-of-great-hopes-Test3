var _playerInst = instance_find(obj_dim_player1,0);
var _sequence = Sequence1;
var _layerName = "Instances_obj";

var _seqElm = layer_sequence_create(_layerName, _playerInst.x, _playerInst.y, _sequence);
var _seqInst = layer_sequence_get_instance(_seqElm);

sequence_instance_override_object(_seqInst,obj_dim_player1,  obj_dim_player2)

object_set_visible(obj_dim_player1,false);
