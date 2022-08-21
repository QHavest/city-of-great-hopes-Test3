// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_play_fon_music(r){
if r==rm_indoor_rival_station or r==rm_indoor_rival_station or r==rm_street_first_side or r==rm_street_second_side 
{
if sound!= snd_rivalstation {
	audio_stop_sound(sound);
	sound = snd_rivalstation;
	audio_play_sound(sound,1,1);}
}
if r==rm_center or r==rm_center_left or r=rm_center_right
{
	if sound!= snd_center {
	audio_stop_sound(sound);
	sound = snd_center;
	audio_play_sound(sound,1,1);}
}




}