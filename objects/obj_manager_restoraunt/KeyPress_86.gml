if(room != rm_restraunt) exit;

var playerInst1 = instance_find(obj_dim_player1,0);
var playerInst2 = instance_find(obj_dim_player2,0);

var objInst1 = instance_find(obj_bar,0);

//var objInst2 = instance_find(obj_this_is_a_table,0);
//var objInst3 = instance_find(obj_this_is_a_table,0);
//var objInst4 = instance_find(obj_this_is_a_table,0);
//var objInst5 = instance_find(obj_this_is_a_table,0);
//var objInst6 = instance_find(obj_this_is_a_table,0);
//var objInst7 = instance_find(obj_this_is_a_table,0);
//var objInst8 = instance_find(obj_this_is_a_table,0);

var objInst9 = instance_find(obj_waiter,0);
var objInst10 = instance_find(obj_shtory,0);
var objInst11 = instance_find(obj_barmen,0);

var sequence = seq_restoraunt;
layer_create(-9999, "Cutcenes");
var layerName = "Cutcenes";

global.shop = true;

seq_rest = layer_sequence_create(layerName, 0,0, sequence);
var seqInst = layer_sequence_get_instance(seq_rest);

sequence_instance_override_object(seqInst, obj_dim_player1,  playerInst1);
sequence_instance_override_object(seqInst, obj_dim_player2,  playerInst2);

sequence_instance_override_object(seqInst, obj_bar,  objInst1);

//sequence_instance_override_object(seqInst, obj_this_is_a_table,  objInst2);
//sequence_instance_override_object(seqInst, obj_this_is_a_table,  objInst3);
//sequence_instance_override_object(seqInst, obj_this_is_a_table,  objInst4);
//sequence_instance_override_object(seqInst, obj_this_is_a_table,  objInst5);
//sequence_instance_override_object(seqInst, obj_this_is_a_table,  objInst6);
//sequence_instance_override_object(seqInst, obj_this_is_a_table,  objInst7);
//sequence_instance_override_object(seqInst, obj_this_is_a_table,  objInst8);

sequence_instance_override_object(seqInst, obj_waiter,  objInst9);
sequence_instance_override_object(seqInst, obj_shtory,  objInst10);
sequence_instance_override_object(seqInst, obj_barmen,  objInst11);

