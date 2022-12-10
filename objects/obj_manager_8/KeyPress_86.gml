
num1 = obj_seller_posyda.depth;
num2 = obj_prilavok_posyda.depth;
num3 = obj_box_posyda.depth;

var playerInst1 = instance_find(obj_dim_player1,0);
var playerInst2 = instance_find(obj_dim_player2,0);
var objInst2 = instance_find(obj_prilavok_posyda,0);
var objInst3 = instance_find(obj_seller_posyda,0);
//var objInst4 = instance_find(obj_orange,0);
var objInst5 = instance_find(obj_orange2,0);
var objInst6 = instance_find(obj_trucks_open,0);
//var objInst7 = instance_find(obj_banana,0);
var objInst8 = instance_find(obj_container,0);
var objInst9 = instance_find(obj_dumb_container,0);
var objInst10 = instance_find(obj_box_posyda,0);
var objInst11 = instance_find(obj_seller_melon,0);
//var objInst12 = instance_find(obj_seller_agro,0);
var objInst13 = instance_find(obj_magazine_fish_back,0);
var objInst14 = instance_find(obj_box_container,0);
var objInst15 = instance_find(obj_box_container_night,0);

var sequence = seq_scena_8_slowed;
var layerName = "Cutscenes";

global.shop = true;
audio_stop_all();

seq3 = layer_sequence_create(layerName, 0,0, sequence);
var seqInst = layer_sequence_get_instance(seq3);

sequence_instance_override_object(seqInst, obj_dim_player1,  playerInst1);
sequence_instance_override_object(seqInst, obj_dim_player2,  playerInst2);
sequence_instance_override_object(seqInst, obj_prilavok_posyda,  objInst2);
sequence_instance_override_object(seqInst, obj_seller_posyda,  objInst3);
//sequence_instance_override_object(seqInst, obj_orange,  objInst4);
sequence_instance_override_object(seqInst, obj_orange2,  objInst5);
sequence_instance_override_object(seqInst, obj_trucks_open,  objInst6);
////sequence_instance_override_object(seqInst, obj_banana,  objInst7);
sequence_instance_override_object(seqInst, obj_container,  objInst8);
sequence_instance_override_object(seqInst, obj_dumb_container,  objInst9);
sequence_instance_override_object(seqInst, obj_box_posyda,  objInst10);
sequence_instance_override_object(seqInst, obj_seller_melon,  objInst11);
//sequence_instance_override_object(seqInst, obj_seller_agro,  objInst12);
sequence_instance_override_object(seqInst, obj_magazine_fish_back,  objInst13);
sequence_instance_override_object(seqInst, obj_box_container,  objInst14);
sequence_instance_override_object(seqInst, obj_box_container_night,  objInst15);