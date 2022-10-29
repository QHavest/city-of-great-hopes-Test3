var _playerInst = instance_find(obj_dim_player1,0);
var _playerInst2 = instance_find(obj_dim_player2,0);
var _objInst1 = instance_find(obj_home,0);
var _objInst2 = instance_find(obj_stairs_gg,0);
var _objInst3 = instance_find(obj_dumb_small_h,0);
var _objInst4 = instance_find(obj_garage_gg,0);
var _objInst5 = instance_find(obj_garage_4,0);
var _sequence = seq_scena6;
var _layerName = "Instances_1";

 _seqElm = layer_sequence_create(_layerName, 0,0, _sequence);
var _seqInst = layer_sequence_get_instance(_seqElm);

sequence_instance_override_object(_seqInst, obj_dim_player1,  _playerInst);
sequence_instance_override_object(_seqInst, obj_dim_player2,  _playerInst2);
sequence_instance_override_object(_seqInst, obj_stairs_gg,  _objInst2);
sequence_instance_override_object(_seqInst, obj_dumb_small_h,  _objInst3);
sequence_instance_override_object(_seqInst, obj_garage_gg,  _objInst4);
sequence_instance_override_object(_seqInst, obj_garage_4,  _objInst5);
sequence_instance_override_object(_seqInst, obj_home,  _objInst1);

