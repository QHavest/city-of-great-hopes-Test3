if(room_last != rm_home_gg)
{
	layerAF = layer_create(-300, "seqAF");
	seq_af = layer_sequence_create("seqAF", 0, 0, seq_afterFight);
}
audio_stop_all();
scr_music_fon_change(room);