if(pause == true)
{
  layer_sequence_pause(_seqElms);
  if(instance_exists(obj_dim_textbox))
  {
    exit;
  }
  else
  {
    layer_sequence_play(_seqElms);
    pause = false;
  }
}

if(start)
{
start = false;
var _playerInst = instance_find(obj_dim_player1,0);
var _playerInst2 = instance_find(obj_dim_player2,0);
var _playerInst3 = instance_find(obj_dim_player2_cut,0);
var _objInst = instance_find(obj_table_gg,0);
var _objInst1 = instance_find(obj_mebli_gg_b,0);

var _sequence = Sequence2;
var _layerName = "Instances_obj";

global.shop = true;

_seqElms = layer_sequence_create(_layerName, 0,0, _sequence);
var _seqInst = layer_sequence_get_instance(_seqElms);

sequence_instance_override_object(_seqInst,obj_dim_player1,  _playerInst)
sequence_instance_override_object(_seqInst,obj_table_gg,  _objInst)
sequence_instance_override_object(_seqInst,obj_dim_player2,  _playerInst2)
sequence_instance_override_object(_seqInst,obj_dim_player2_cut,  _playerInst3)
sequence_instance_override_object(_seqInst,obj_mebli_gg_b,  _objInst1)
}