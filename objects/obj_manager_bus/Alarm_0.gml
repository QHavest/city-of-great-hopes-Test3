alarm_set(0, 25 * 30);
if(bus)
{
	show_debug_message("Bus is ready");
	layer_create(-9999, "Cutcenes");
	var layerName = "Cutcenes";
	var seqName = seq_bus;

	seq_buses = layer_sequence_create(layerName, busX, busY, seqName);
}