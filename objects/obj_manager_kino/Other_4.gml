layer_create(-9999, "Cutcenes");
var layerName = "Cutcenes";

var playerInst1 = instance_find(obj_dim_player1,0);
var playerInst2 = instance_find(obj_dim_player2,0);

seq1 = layer_sequence_create(layerName, 0,0, seq_kino);
var seqInst = layer_sequence_get_instance(seq1);

sequence_instance_override_object(seqInst, obj_dim_player1,  playerInst1);
sequence_instance_override_object(seqInst, obj_dim_player2,  playerInst2);

global.shop = true;