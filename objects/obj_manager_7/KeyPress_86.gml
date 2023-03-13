x1 = obj_center_fontan.x;
y1 = obj_center_fontan.y;

var playerInst1 = instance_find(obj_dim_player1,0);
var playerInst2 = instance_find(obj_dim_player2,0);
var objInst1 = instance_find(obj_fountain,0);
var objInst2 = instance_find(obj_center_fontan,0);
//var objInst3 = instance_find(obj_curb_left_hotel,0);
//var objInst4 = instance_find(obj_right_bench,0);
//var objInst5 = instance_find(obj_center_goluby,0);
//var objInst6 = instance_find(obj_right_lamp,0);
//var objInst7 = instance_find(obj_woi_invisible_wall2,0);
//var objInst8 = instance_find(obj_curb_right_hotel,0);
var objInst9 = instance_find(obj_hotel,0);
//var objInst10 = instance_find(obj_sound_emmiter_3d,0);

var sequence = seq_scena_7;
var layerName = "Instances_obj";

global.shop = true;

seq2 = layer_sequence_create(layerName, 0,0, sequence);
var seqInst = layer_sequence_get_instance(seq2);

sequence_instance_override_object(seqInst, obj_dim_player1,  playerInst1);
sequence_instance_override_object(seqInst, obj_dim_player2,  playerInst2);
sequence_instance_override_object(seqInst, obj_center_fontan,  objInst2);
sequence_instance_override_object(seqInst, obj_fountain,  objInst1);
//sequence_instance_override_object(seqInst, obj_curb_left_hotel,  objInst3);
//sequence_instance_override_object(seqInst, obj_right_bench,  objInst4);
//sequence_instance_override_object(seqInst, obj_center_goluby,  objInst5);
//sequence_instance_override_object(seqInst, obj_right_lamp,  objInst6);
//sequence_instance_override_object(seqInst, obj_woi_invisible_wall2,  objInst7);
//sequence_instance_override_object(seqInst, obj_curb_right_hotel,  objInst8);
sequence_instance_override_object(seqInst, obj_hotel,  objInst9);
//sequence_instance_override_object(seqInst, obj_sound_emmiter_3d,  objInst10);