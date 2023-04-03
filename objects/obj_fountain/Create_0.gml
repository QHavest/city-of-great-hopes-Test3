/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

audio_falloff_set_model(audio_falloff_linear_distance);
audio_play_sound_at(snd_fountain,x,y,0,300,900,1,1,3,global.Fon_sound_gain);