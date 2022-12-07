var playerInst1 = instance_find(obj_dim_player1,0);
var playerInst2 = instance_find(obj_dim_player2,0);
var objInst1 = instance_find(obj_trash,0);
var objInst2 = instance_find(obj_prilavok_posyda,0);
var objInst3 = instance_find(obj_seller_posyda,0);
var objInst4 = instance_find(obj_orange,0);
var objInst5 = instance_find(obj_orange2,0);
var objInst6 = instance_find(obj_truck_open,0);
//var objInst7 = instance_find(obj_banana,0);
//var objInst8 = instance_find(obj_container,0);
//var objInst9 = instance_find(obj_dumb_container_1,0);
//var objInst10 = instance_find(obj_box_posyda,0);

var sequence = seq_scena_8;
var layerName = "Cutscenes";

global.shop = true;

seq3 = layer_sequence_create(layerName, 0,0, sequence);
var seqInst = layer_sequence_get_instance(seq3);

sequence_instance_override_object(seqInst, obj_dim_player1,  playerInst1);
sequence_instance_override_object(seqInst, obj_dim_player2,  playerInst2);
sequence_instance_override_object(seqInst, obj_trash,  objInst1);
sequence_instance_override_object(seqInst, obj_prilavok_posyda,  objInst2);
sequence_instance_override_object(seqInst, obj_seller_posyda,  objInst3);
sequence_instance_override_object(seqInst, obj_orange,  objInst4);
sequence_instance_override_object(seqInst, obj_orange2,  objInst5);
sequence_instance_override_object(seqInst, obj_trucks_open,  objInst6);
//sequence_instance_override_object(seqInst, obj_banana,  objInst7);
//sequence_instance_override_object(seqInst, obj_container,  objInst8);
//sequence_instance_override_object(seqInst, obj_dumb_container_1,  objInst9);
//sequence_instance_override_object(seqInst, obj_box_posyda,  objInst10);