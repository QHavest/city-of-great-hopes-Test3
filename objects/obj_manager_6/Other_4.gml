
if(global.task == 0.5)
{
daycycle.alarm[3] = 1;
daycycle.alarm[5] = 25 * 30;
daycycle.start_new = true;

var playerInst1 = instance_find(obj_dim_player1,0);
var playerInst2 = instance_find(obj_dim_player2,0);
var objInst1 = instance_find(obj_home,0);
var objInst2 = instance_find(obj_stairs_gg,0);
var objInst3 = instance_find(obj_dumb_small_h,0);
var objInst4 = instance_find(obj_garage_gg,0);
var objInst5 = instance_find(obj_garage_4,0);
var objInst6 = instance_find(inst_F377C1A,0);

var sequence = seq_scena_6;
layer_create(-249, "Cutcenes");
var layerName = "Cutcenes";

global.shop = true;

scr_music_fon_change(seq_scena_6);

seq1 = layer_sequence_create(layerName, 0,0, sequence);
var seqInst = layer_sequence_get_instance(seq1);

sequence_instance_override_object(seqInst, obj_dim_player1,  playerInst1);
sequence_instance_override_object(seqInst, obj_dim_player2,  playerInst2);
sequence_instance_override_object(seqInst, obj_stairs_gg,  objInst2);
sequence_instance_override_object(seqInst, obj_dumb_small_h,  objInst3);
sequence_instance_override_object(seqInst, obj_garage_gg,  objInst4);
sequence_instance_override_object(seqInst, obj_garage_4,  objInst5);
sequence_instance_override_object(seqInst, obj_home,  objInst1);
sequence_instance_override_object(seqInst, obj_bench2,  objInst6);

}

