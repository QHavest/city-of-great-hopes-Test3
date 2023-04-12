layer_create(-9999, "Sequence_bus");
var layerName = "Sequence_bus";
if (!layer_sequence_exists("Sequence_bus", sequence_id))
{
	sequence_id = layer_sequence_create(layerName, 0,0, seq_bus_map);
}
else
{
	layer_sequence_destroy(sequence_id);
}