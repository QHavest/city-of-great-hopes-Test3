layer_create(-9999, "Sequence_bus");
var layerName = "Sequence_bus";
var seqname = irandom(2);
var seqnames = noone;
switch(seqname){
case 0:
	seqnames = seq_bus_map;
break;
case 1:
	seqnames = seq_car_ride_blue;
break;
case 2:
	seqnames = seq_car_ride_mers;
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