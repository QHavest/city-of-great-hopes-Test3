layer_create(-999, "Sequence_bus");
var layerName = "Sequence_bus";
//var seqname = 1//irandom(5);
var seqnames = noone;
switch(seqname){
case 0:
	seqnames = seq_car_ride_r;
break;
case 1:
	seqnames = seq_car_ride_l;
break;
case 2:
	seqnames = seq_railway_car_ride_l;
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