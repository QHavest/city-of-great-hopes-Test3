num_rain = irandom(percent_rain);

if(num_rain == percent_rain) 
{
	//show_debug_message("Alarm 7 EXIT")
	exit;
}

alarm_set(7, time_rain2 * 20);

//show_debug_message(num_rain)