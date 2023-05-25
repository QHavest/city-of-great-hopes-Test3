var sequence = seq_splash_scr;
layer_create(-999, "splash")
var layerName = "splash";
audio_play_sound(snd_theme_splash,1,1)
seqs = layer_sequence_create(layerName, 0,0, sequence);
