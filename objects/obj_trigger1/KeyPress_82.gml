var _playerInst = instance_find(obj_dim_player1,0);
var _objInst = instance_find(obj_table_gg,0);
var _sequence = Sequence1;
var _layerName = "Instances_obj";

 _seqElm = layer_sequence_create(_layerName, 0,0, _sequence);
var _seqInst = layer_sequence_get_instance(_seqElm);

sequence_instance_override_object(_seqInst,obj_dim_player1,  _playerInst)
sequence_instance_override_object(_seqInst,obj_table_gg,  _objInst)
//sequence_instance_override_object(_seqInst, obj_dim_player2,  obj_dim_player1)










