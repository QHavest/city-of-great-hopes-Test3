var _playerInst3 = instance_find(obj_dim_player2_cut,0);
var _playerInst4 = instance_find(obj_dim_player2,0);
//var _objInst = instance_find(obj_table_gg,0);
var _objInst4 = instance_find(obj_mebli_gg_b,0);
var _objInst5 = obj_krus_throw_pillow;
var _objInst3 = instance_find(obj_bed_cut,0);
var _sequence = Sequence2;
var _layerName = "Instances_obj";

_seqElms = layer_sequence_create(_layerName, 0,0, _sequence);
var _seqInst = layer_sequence_get_instance(_seqElms);

//sequence_instance_override_object(_seqInst,obj_dim_player1,  _playerInst)
//sequence_instance_override_object(_seqInst,obj_table_gg,  _objInst)
sequence_instance_override_object(_seqInst,obj_dim_player2,  _playerInst4)
sequence_instance_override_object(_seqInst,obj_dim_player2_cut,  _playerInst3)
sequence_instance_override_object(_seqInst,obj_mebli_gg_b,  _objInst4)
sequence_instance_override_object(_seqInst,obj_bed_cut,  _objInst3)
sequence_instance_override_object(_seqInst,obj_krus_throw_pillow,  _objInst5)
