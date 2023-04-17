if event_data[? "event_type"] == "sequence event" // or you can check "sprite event"
{
    switch (event_data[? "message"])
    {
        case "map_create":
           instance_activate_object(inst_CC005EA);
        break;
		case "map_deact":
           instance_deactivate_object(inst_CC005EA);
        break;
		case "seq_deletes":
			audio_emitter_free(obj_car_blue.myEmitter);
           	layer_sequence_destroy(sequence_id);
			audio_stop_sound(snd_car_ride);
			alarm[0] = irandom_range(60,90);
        break;
        /*case "destroy":
            sequence_destroy(event_data[? "element_id"]);
        break;*/
    }
}