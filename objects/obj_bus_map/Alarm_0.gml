layer_create(-999, "Sequence_bus");
var layerName = "Sequence_bus";
var seqname = 0//irandom(5);
var seqnames = noone;
switch(seqname){
case 0:
	seqnames = seq_car_ride_blue;
	//audio_falloff_set_model(audio_falloff_linear_distance);
	//audio_play_sound_at(snd_car_ride,x,y,0,300,900,1,1,5,global.Fon_sound_gain);
break;
case 1:
	seqnames = seq_car_ride_grey;
break;
case 2:
	seqnames = seq_car_ride_grobovoz;
break;
case 3:
	seqnames = seq_car_ride_mers;
break;
case 4:
	seqnames = seq_car_ride_red;
break;
case 5:
	seqnames = seq_car_ride_white;
break;
case 6:
	seqnames = seq_bus_map;
break;
}
if (!layer_sequence_exists("Sequence_bus", sequence_id))
{
	sequence_id = layer_sequence_create(layerName, 0,0, seqnames);
}
else
{
	layer_sequence_destroy(sequence_id);
}